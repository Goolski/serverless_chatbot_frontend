import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/backend/chatbot_backend.dart';

import '../../../backend/recording.dart';
import 'chat_page_state.dart';

class ChatPageCubit extends Cubit<ChatPageState> {
  ChatPageCubit() : super(ChatPageState.initial());

  Future<void> onSendRecording() async {
    final encodedAudio = (await getBase64Recording());
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
    sendRequest(
      message: message,
      authToken: authToken,
      userId: userId,
      contentType: contentType,
    );
  }
}
