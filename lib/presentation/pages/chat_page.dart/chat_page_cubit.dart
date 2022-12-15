import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/backend/chatbot_backend.dart';
import 'package:serverless_chatbot/backend/google_auth_repository.dart';

import '../../../backend/recording.dart';
import 'chat_page_state.dart';

class ChatPageCubit extends Cubit<ChatPageState> {
  final Recording _recording;
  final GoogleAuthRepository _googleAuthRepository;
  final ChatbotBackend _chatbotBackend;

  late final StreamSubscription<Map<String, Object>>
      _responseStreamSubscription;
  late final StreamSubscription<GoogleUser> _googleUserStreamSubscription;

  GoogleUser? currentUser;

  ChatPageCubit(
    this._recording,
    this._googleAuthRepository,
    this._chatbotBackend,
  ) : super(const ChatPageState.initial());

  Future<void> onSendRecording() async {
    final encodedAudio = (await _recording.getBase64Recording());
    if (encodedAudio != null) {
      sendMessage(message: encodedAudio, contentType: RequestContentType.audio);
    }
  }

  Future<void> onSendText({required String message}) {}

  Future<void> onStopRecording() {}

  Future<void> onStartRecording() {}

  Future<void> sendMessage({
    required String message,
    required RequestContentType contentType,
  }) {
    _chatbotBackend.sendRequest(
      message: message,
      authToken: authToken,
      userId: userId,
      contentType: contentType,
    );
  }
}
