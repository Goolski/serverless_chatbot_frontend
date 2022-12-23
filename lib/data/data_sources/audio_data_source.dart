import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

@injectable
class AudioDataSource {
  AudioDataSource() {
    getTemporaryDirectory().then((value) {
      _directory = value;
      _file = File('${_directory.path}/$filename.mp3');
    });
  }

  final AudioPlayer _audioPlayer = AudioPlayer();
  final filename = const Uuid().v4().substring(0, 20);
  late final Directory _directory;
  late final File _file;

  Future<void> playAudio({required List<int> audioBytes}) async {
    await saveAudio(audioBytes);
    await _audioPlayer.setUrl('file://${_directory.path}/$filename.mp3');
    await _audioPlayer.play();
    return;
  }

  Future<void> stopAudio() async {
    await _audioPlayer.stop();
  }

  Future<void> saveAudio(List<int> audio) async {
    await _file.writeAsBytes(audio);
  }

  void deleteAudio() {}
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
