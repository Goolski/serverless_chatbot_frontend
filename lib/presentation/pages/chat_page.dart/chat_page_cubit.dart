import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:serverless_chatbot/backend/chatbot_backend.dart';
import 'package:serverless_chatbot/backend/google_auth_repository.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chatTypes;
import 'package:uuid/uuid.dart';

import '../../../backend/recording.dart';
import 'chat_page_state.dart';

@injectable
class ChatPageCubit extends Cubit<ChatPageState> {
  final Recording _recording;
  final GoogleAuthRepository _googleAuthRepository;
  final ChatbotBackend _chatbotBackend;
  final Uuid _uuid = const Uuid();

  GoogleUser? _currentUser;

  late final StreamSubscription<Map<String, Object>>
      _responseStreamSubscription;
  late final StreamSubscription<GoogleUser> _googleUserStreamSubscription;

  ChatPageCubit(
    this._recording,
    this._googleAuthRepository,
    this._chatbotBackend,
  ) : super(const ChatPageState.initial(messages: [])) {
    init();
  }

  void init() {
    _responseStreamSubscription = _chatbotBackend.responseStream.listen(
      (response) {
        onChatbotResponse(response: response);
      },
    );
    _googleUserStreamSubscription =
        _googleAuthRepository.userStream.listen((user) {
      _currentUser = user;
      emit(ChatPageState.messagesUpdated(
          messages: state.messages, user: getChatUser()!));
    });
  }

  Future<void> onSendRecording() async {
    final encodedAudio = (await _recording.getBase64Recording());
    if (encodedAudio != null) {
      sendMessage(message: encodedAudio, contentType: RequestContentType.audio);
    }
  }

  void onChatbotResponse({required Map<String, Object> response}) {
    print(response);
  }

  void onUserUpdate({required GoogleUser user}) {
    _currentUser = user;
  }

  void onSendText({required String message}) {
    sendMessage(message: message, contentType: RequestContentType.text);

    final chatUser = getChatUser();
    if (chatUser != null) {
      final textMessage = createTextMessage(text: message, user: chatUser);
      addMessage(newMessage: textMessage);
    }
  }

  void onStopRecording() {
    _recording.stopRecording();
  }

  void onStartRecording() {
    _recording.startRecording();
  }

  void sendMessage({
    required String message,
    required RequestContentType contentType,
  }) {
    if (_currentUser != null && _currentUser!.accessToken != null) {
      _chatbotBackend.sendRequest(
        message: message,
        authToken: _currentUser!.accessToken!,
        userId: _currentUser!.id,
        contentType: contentType,
      );
    }
  }

  addMessage({required chatTypes.Message newMessage}) {
    final newMessages = state.messages;
    newMessages.insert(0, newMessage);
    final chatUser = getChatUser();
    if (chatUser != null) {
      emit(MessagesUpdated(messages: newMessages, user: chatUser));
    }
  }

  chatTypes.TextMessage createTextMessage({
    required String text,
    required chatTypes.User user,
  }) {
    return chatTypes.TextMessage(
      author: user,
      id: _uuid.v4(),
      text: text,
    );
  }

  chatTypes.User? getChatUser() {
    if (_currentUser == null) {
      return null;
    }
    return chatTypes.User(
      id: _currentUser!.id,
      firstName: _currentUser!.displayName,
      imageUrl: _currentUser!.photoUrl,
    );
  }

  @override
  Future<void> close() async {
    _responseStreamSubscription.cancel();
    _googleUserStreamSubscription.cancel();
    super.close();
  }
}
