import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

const URL = '3p4mjoachc.execute-api.eu-west-2.amazonaws.com';

Future<String> askBot({
  required String message,
  required String authToken,
  required String userId,
}) async {
  final url = Uri.https(URL, '/core');
  final body = {
    "userId": "$userId",
    "inputText": message,
  };
  final response = (await http.post(url,
      body: jsonEncode(body),
      headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"}));
  final responseMessage = jsonDecode(response.body)['message'];
  return responseMessage;
}

Future<String> askBotWithAudio({
  required String encodedAudio,
  required String authToken,
  required String userId,
}) async {
  final url = Uri.https(URL, '/core');
  final body = {
    "userId": "$userId",
    "inputAudio": {
      "contentType": "audio/l16; rate=16000; channels=1",
      "base64Audio": '$encodedAudio'
    }
  };
  final response = (await http.post(url,
      body: jsonEncode(body),
      headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"}));
  final responseBody = jsonDecode(response.body);
  final responseMessage = jsonDecode(response.body)['message'];
  print(responseBody['inputTranscript']);
  return responseMessage;
}
