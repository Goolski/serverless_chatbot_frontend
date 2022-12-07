// Import package
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

final record = Record();

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

Future<String?> stopRecording() async {
  await record.stop();
}

Future<String?> getEncodedRecording() async {
  final recording = File('${await _localPath}/myRecording.pcm');
  final converted = base64.encode(await recording.readAsBytes());
  print(converted);
  return converted;
}

// Get the state of the recorder
// bool isRecording = await record.isRecording();

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
