// Import package
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

class Recording {
  final record = Record();

  Future<bool> get isRecording async => record.isRecording();

  void startRecording() async {
// Check and request permission
    if (await record.hasPermission()) {
      // Start recording
      await record.start(
        path: '${await _localPath}/myRecording.pcm',
        encoder: AudioEncoder.pcm16bit,
        bitRate: 128000, // by default
        numChannels: 1,
        samplingRate: 16000,
      );
    }
  }

  Future<void> stopRecording() async {
    await record.stop();
  }

  Future<String?> getBase64Recording() async {
    final recording = File('${await _localPath}/myRecording.pcm');
    final converted = base64.encode(await recording.readAsBytes());
    recording.delete();
    return converted;
  }

// Get the state of the recorder
// bool isRecording = await record.isRecording();

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }
}
