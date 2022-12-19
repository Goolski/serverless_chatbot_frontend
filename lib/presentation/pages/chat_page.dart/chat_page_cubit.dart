import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chatTypes;
import 'package:uuid/uuid.dart';

import '../../../data/data_sources/chatbot_data_source.dart';
import '../../../data/data_sources/google_auth_repository.dart';
import '../../../data/data_sources/record_data_source.dart';
import 'chat_page_state.dart';

@injectable
class ChatPageCubit extends Cubit<ChatPageState> {
  final RecordDataSource _recording;
  final GoogleAuthRepository _googleAuthRepository;
  final ChatbotDataSource _chatbotBackend;
  final GoogleSignInAccount _initialAccount;
  final Uuid _uuid = const Uuid();

  late final StreamSubscription<Map<String, Object>>
      _responseStreamSubscription;
  late final StreamSubscription<GoogleSignInAccount?>
      _googleUserStreamSubscription;

  ChatPageCubit(
    this._recording,
    this._googleAuthRepository,
    this._chatbotBackend,
    this._initialAccount,
  ) : super(
          ChatPageState.initial(
            messages: [],
            user: _initialAccount,
          ),
        ) {
    init();
  }

  void init() {
    _responseStreamSubscription = _chatbotBackend.responseStream.listen(
      (message) {
        onServerResponse(newMessage: message);
      },
    );

    _googleUserStreamSubscription =
        _googleAuthRepository.googleUserStream.listen(
      (event) {
        if (event != null) {
          emit(ChatPageState.messagesUpdated(
              messages: state.messages, user: event));
        }
      },
    );
  }

  @override
  Future<void> close() async {
    _responseStreamSubscription.cancel();
    _googleUserStreamSubscription.cancel();
    super.close();
  }

  void onSendRecording() {}

  void onStartRecording() {}

  void onStopRecording() {}

  void onSendText({required String message}) {}

  void onServerResponse({required Map<String, Object> newMessage}) {
    emit(ChatPageState.messagesUpdated(messages: messages, user: state.user!));
  }
}
