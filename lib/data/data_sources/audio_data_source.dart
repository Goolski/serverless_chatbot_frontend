import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

@injectable
class AudioDataSource {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playAudio({required List<int> audioBytes}) async {
    final intAudio = List<int>.from(audioBytes);
    final source = MpegSource(intAudio);
    await _audioPlayer.setAudioSource(source);
    await _audioPlayer.play();
  }

  Future<void> stopAudio() async {
    await _audioPlayer.stop();
  }
}

class MpegSource extends StreamAudioSource {
  final List<int> bytes;
  MpegSource(this.bytes);

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    start ??= 0;
    end ??= bytes.length;
    return StreamAudioResponse(
      sourceLength: bytes.length,
      contentLength: end - start,
      offset: start,
      stream: Stream.value(bytes.sublist(start, end)),
      contentType: 'audio/mpeg',
    );
  }
}
