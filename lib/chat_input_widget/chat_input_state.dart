import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_input_state.freezed.dart';

@freezed
class ChatInputState with _$ChatInputState {
  const factory ChatInputState.initial() = Initial;
  const factory ChatInputState.typing({required String text}) = Typing;
  const factory ChatInputState.recording() = Recording;
}
