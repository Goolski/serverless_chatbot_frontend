import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:serverless_chatbot/data/data_sources/audio_data_source.dart';
import 'package:serverless_chatbot/presentation/widgets/chat_audio_message_widget/chat_audio_message_state.dart';

@injectable
class ChatAudioMessageCubit extends Cubit<ChatAudioMessageState> {
  final AudioDataSource _audioDataSource;
  ChatAudioMessageCubit(
    this._audioDataSource,
    @factoryParam audioBytes,
  ) : super(
          ChatAudioMessageState.initial(
            audioBytes: audioBytes,
          ),
        );

  void play() {
    emit(ChatAudioMessageState.playing(audioBytes: state.audioBytes));
    _audioDataSource.playAudio(audioBytes: state.audioBytes).then(
          (_) => emit(
            ChatAudioMessageState.initial(audioBytes: state.audioBytes),
          ),
        );
  }

  void stop() {
    _audioDataSource.stopAudio();
    emit(ChatAudioMessageState.initial(audioBytes: state.audioBytes));
  }
}
