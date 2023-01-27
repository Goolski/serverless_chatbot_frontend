import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chatTypes;
import 'package:serverless_chatbot/data/models/cultural_event_model/cultural_event_model.dart';
import 'package:serverless_chatbot/data/repositories/localization_reposiotry.dart';
import 'package:uuid/uuid.dart';

import '../../../data/data_sources/chatbot_data_source.dart';
import '../../../data/data_sources/google_auth_repository.dart';
import '../../../data/data_sources/record_data_source.dart';
import '../../../data/models/custom_response_model/custom_response_model.dart';
import '../../../data/models/event_model/event_model.dart';
import '../../../data/models/task_model/task_model.dart';
import '../../../data/models/weather_model/weather_model.dart';
import 'chat_page_state.dart';

const chatBotUser = chatTypes.User(id: 'ChatBot', firstName: 'ChatBot');

@injectable
class ChatPageCubit extends Cubit<ChatPageState> {
  final RecordDataSource _recording;
  final GoogleAuthRepository _googleAuthRepository;
  final ChatbotDataSource _chatbotBackend;
  final LocalizationRepository _localizationRepository;
  final Uuid _uuid = const Uuid();

  late final StreamSubscription<Message> _responseStreamSubscription;
  late final StreamSubscription<GoogleSignInAccount?>
      _googleUserStreamSubscription;

  ChatPageCubit(
    this._recording,
    this._googleAuthRepository,
    this._chatbotBackend,
    this._localizationRepository,
    @factoryParam initialAccount,
  ) : super(
          ChatPageState.initial(
            messages: [],
            user: initialAccount,
          ),
        ) {
    init();
  }

  void init() {
    _responseStreamSubscription = _chatbotBackend.responseStream.listen(
      (message) {
        onServerResponse(newMessage: message);
      },
      onError: (obj, stackTrace) => print("$obj ::: $stackTrace"),
    );

    _googleUserStreamSubscription =
        _googleAuthRepository.googleUserStream.listen(
      (event) {
        if (event != null) {
          emit(
            ChatPageState.messagesUpdated(
              messages: state.messages,
              user: event,
            ),
          );
        }
      },
    );
  }

  void onSendRecording() {
    _recording.stopRecording();
    _recording.isRecording.then((isRecording) async {
      if (!isRecording) {
        final record = await _recording.getBase64Recording();
        final location = await _localizationRepository.getLocation();
        state.user.authentication.then((auth) {
          if (auth.accessToken != null && record != null) {
            _chatbotBackend.sendRequest(
              message: record,
              authToken: auth.accessToken!,
              userId: state.user.id,
              contentType: RequestContentType.audio,
              location: location,
            );
          }
        });
      }
    });
  }

  void onStartRecording() {
    _recording.startRecording();
  }

  void onStopRecording() {
    _recording.stopRecording();
  }

  void onSendText({required String message}) async {
    final location = await _localizationRepository.getLocation();
    state.user.authentication.then(
      (auth) {
        if (auth.accessToken != null) {
          _chatbotBackend.sendRequest(
            message: message,
            authToken: auth.accessToken!,
            userId: state.user.id,
            contentType: RequestContentType.text,
            location: location,
          );
          addMessage(
            message: createTextMessage(
              message: message,
              author: getChatUser(),
            ),
          );
        }
      },
    );
  }

  void onServerResponse({required Message newMessage}) {
    if (newMessage.author == MessageAuthor.user) {
      final message = createTextMessage(
        message: newMessage.message,
        author: getChatUser(),
      );
      addMessage(message: message);
    }
    if (newMessage.author == MessageAuthor.bot &&
        newMessage.message.contains('{')) {
      final message = createCustomMessage(
        message: newMessage.message,
        author: chatBotUser,
      );
    } else if (newMessage is AudioMessage) {
      final audioMessage = createAudioMessage(
        text: newMessage.message,
        audio: newMessage.audioMessage,
        author: newMessage.author == MessageAuthor.bot
            ? chatBotUser
            : getChatUser(),
      );
      addMessage(message: audioMessage);
    }
  }

  //TODO: Ask everyone for header and response and get rid of null safety
  createCustomMessage({
    required String message,
    required chatTypes.User author,
  }) {
    final response = CustomResponseModel.fromJson(
      jsonDecode(message),
    );
    switch (response.type) {
      case 'weather':
        final header = createTextMessage(
          message: response.header!,
          author: author,
        );
        addMessage(message: header);
        response.objects.forEach((element) {
          final weather = createWeatherMessage(
            weather: WeatherModel.fromJson(element),
            author: author,
          );
          addMessage(message: weather);
        });
        break;
      case 'event':
        final header = createTextMessage(
          message: 'Events:',
          author: author,
        );
        addMessage(message: header);
        response.objects.forEach((element) {
          final event = createEventMessage(
            event: EventModel.fromJson(element),
            author: author,
          );
          addMessage(message: event);
        });
        break;
      case 'task':
        final header = createTextMessage(
          message: response.header!,
          author: author,
        );
        addMessage(message: header);
        response.objects.forEach((element) {
          final task = createTaskMessage(
            task: TaskModel.fromJson(element),
            author: author,
          );
          addMessage(message: task);
        });
        break;
      case 'culturalEvent':
        final header = createTextMessage(
          message: response.header!,
          author: author,
        );
        addMessage(message: header);
        response.objects.forEach((element) {
          final culturalEvent = createCulturalEventMessage(
            culturalEvent: CulturalEventModel.fromJson(element),
            author: author,
          );
          addMessage(message: culturalEvent);
        });
        break;
    }
  }

  chatTypes.CustomMessage createCulturalEventMessage({
    required CulturalEventModel culturalEvent,
    required chatTypes.User author,
  }) {
    final partialMessage = chatTypes.PartialCustom(metadata: {
      'type': 'culturalEvent',
      'message': culturalEvent,
    });
    final message = chatTypes.CustomMessage.fromPartial(
      partialCustom: partialMessage,
      author: author,
      id: _uuid.v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    return message;
  }

  chatTypes.CustomMessage createWeatherMessage({
    required WeatherModel weather,
    required chatTypes.User author,
  }) {
    final partialMessage = chatTypes.PartialCustom(metadata: {
      'type': 'weather',
      'message': weather,
    });
    final message = chatTypes.CustomMessage.fromPartial(
      partialCustom: partialMessage,
      author: author,
      id: _uuid.v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    return message;
  }

  chatTypes.CustomMessage createEventMessage({
    required EventModel event,
    required chatTypes.User author,
  }) {
    final partialMessage = chatTypes.PartialCustom(metadata: {
      'type': 'event',
      'message': event,
    });
    final message = chatTypes.CustomMessage.fromPartial(
      partialCustom: partialMessage,
      author: author,
      id: _uuid.v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    return message;
  }

  chatTypes.CustomMessage createTaskMessage({
    required TaskModel task,
    required chatTypes.User author,
  }) {
    final partialMessage = chatTypes.PartialCustom(metadata: {
      'type': 'task',
      'message': task,
    });
    final message = chatTypes.CustomMessage.fromPartial(
      partialCustom: partialMessage,
      author: author,
      id: _uuid.v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    return message;
  }

  chatTypes.CustomMessage createAudioMessage({
    required String text,
    required List<int> audio,
    required chatTypes.User author,
  }) {
    final partialMessage = chatTypes.PartialCustom(metadata: {
      'type': 'audio',
      'message': text,
      'audio': audio,
    });
    final message = chatTypes.CustomMessage.fromPartial(
      partialCustom: partialMessage,
      author: author,
      id: _uuid.v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    return message;
  }

  chatTypes.TextMessage createTextMessage(
      {required String message, required chatTypes.User author}) {
    return chatTypes.TextMessage(
      text: message,
      author: author,
      id: _uuid.v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
  }

  void addMessage({required chatTypes.Message message}) {
    final updatedMessages = List<chatTypes.Message>.from(state.messages);
    updatedMessages.insert(0, message);
    emit(
      ChatPageState.messagesUpdated(
        messages: updatedMessages,
        user: state.user,
      ),
    );
  }

  chatTypes.User getChatUser() {
    return chatTypes.User(
      id: state.user.id,
      imageUrl: state.user.photoUrl,
      firstName: state.user.displayName,
    );
  }

  @override
  Future<void> close() async {
    _responseStreamSubscription.cancel();
    _googleUserStreamSubscription.cancel();
    super.close();
  }
}
