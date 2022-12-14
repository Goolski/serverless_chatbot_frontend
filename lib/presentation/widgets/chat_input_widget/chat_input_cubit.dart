import 'package:bloc/bloc.dart';

import 'chat_input_state.dart';

class ChatInputCubit extends Cubit<ChatInputState> {
  ChatInputCubit() : super(ChatInputState.initial());

  void updateTextInput({required String input}) {
    emit(ChatInputState.typing(text: input));
  }

  void onMicPressed() {
    emit(const ChatInputState.recording());
  }

  void onRecordingStopped() {
    emit(const ChatInputState.initial());
  }

  void onTextSend() {
    emit(const ChatInputState.initial());
  }
}
