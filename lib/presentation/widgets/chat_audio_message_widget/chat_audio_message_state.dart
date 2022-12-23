import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_audio_message_state.freezed.dart';

@freezed
class ChatAudioMessageState with _$ChatAudioMessageState {
  factory ChatAudioMessageState.initial({required List<int> audioBytes}) =
      Stopped;
  factory ChatAudioMessageState.playing({required List<int> audioBytes}) =
      Playing;
}
