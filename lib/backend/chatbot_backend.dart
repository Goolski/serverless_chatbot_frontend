import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

const URL = '3p4mjoachc.execute-api.eu-west-2.amazonaws.com';

enum RequestContentType {
  text,
  audio,
}

class ChatbotBackend {
  final ChatbotResponseCreator chatbotResponseCreator =
      ChatbotResponseCreator();

  Stream<Map<String, Object>> get responseStream =>
      chatbotResponseCreator.stream;

  void sendRequest({
    required String message,
    required String authToken,
    required String userId,
    required RequestContentType contentType,
  }) {
    final url = Uri.https(URL, '/core');
    final body = createBody(
      message: message,
      userId: userId,
      contentType: contentType,
    );
    http.post(
      url,
      body: jsonEncode(body),
      headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
    ).then(
      (response) => chatbotResponseCreator.addResponse(response),
    );
    // final responseMessage = jsonDecode(response.body)['message'];
  }

  Map<String, Object> createBody({
    required String message,
    required String userId,
    required RequestContentType contentType,
  }) {
    switch (contentType) {
      case RequestContentType.text:
        return {
          "userId": "$userId",
          "inputText": message,
        };
      case RequestContentType.audio:
        return {
          "userId": "$userId",
          "inputAudio": {
            "contentType": "audio/l16; rate=16000; channels=1",
            "base64Audio": "$message"
          },
        };
    }
  }
}

class ChatbotResponseCreator {
  final _controller = StreamController<Map<String, Object>>();

  void addResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        _controller.add(jsonDecode(response.body));
        break;
      case 400:
        _controller.addError('Bad Request');
        break;
      case 401:
        _controller.addError('Unauthorized');
        break;
      case 403:
        _controller.addError('Forbidden');
        break;
      case 408:
        _controller.addError('Request Timeout');
        break;
      case 500:
        _controller.addError('Internal Server Error');
        break;
      case 501:
        _controller.addError('Not Implemented');
        break;
      case 502:
        _controller.addError('Bad Gateway');
        break;
      case 503:
        _controller.addError('Service Unavailable');
        break;
      case 504:
        _controller.addError('Gateway Timeout');
        break;
      default:
        _controller.addError('error');
        break;
    }
  }

  Stream<Map<String, Object>> get stream => _controller.stream;
}
