import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

const URL = 'ggcxf1l9ac.execute-api.eu-west-2.amazonaws.com';

enum RequestContentType {
  text,
  audio,
}

enum MessageAuthor {
  bot,
  user,
}

@injectable
class ChatbotDataSource {
  final ChatbotResponseCreator chatbotResponseCreator =
      ChatbotResponseCreator();

  Stream<Message> get responseStream => chatbotResponseCreator.stream;

  void sendRequest({
    required String message,
    required String authToken,
    required String userId,
    required RequestContentType contentType,
  }) {
    final url = Uri.https(URL, 'Prod/core');
    final body = createBody(
      message: message,
      userId: userId,
      contentType: contentType,
    );
    http
        .post(
          url,
          body: jsonEncode(body),
          headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"},
        )
        .then(
          (response) => chatbotResponseCreator.addResponse(response),
        )
        .onError(
          (error, stackTrace) => print(
            "error: $error, \n stackTrace: $stackTrace",
          ),
        );
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
  final _controller = StreamController<Message>();

  void addResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final decodedBody = jsonDecode(response.body);
        parseBody(decodedBody: decodedBody);
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

  Stream<Message> get stream => _controller.stream;

  void parseBody({required decodedBody}) {
    if (decodedBody['inputTranscript'] != null) {
      try {
        final message = decodedBody['inputTranscript'] as String;
        _controller.add(
          Message(
            author: MessageAuthor.user,
            message: message,
          ),
        );
      } catch (error) {
        print(error);
      }
    }
    if (decodedBody['audioStream'] != null) {
      try {
        final audio = base64Decode(decodedBody['audioStream'] as String);
        final message = decodedBody['message'] as String;
        _controller.add(
          AudioMessage(
            audioMessage: audio,
            author: MessageAuthor.bot,
            message: message,
          ),
        );
      } catch (error) {
        print(error);
      }
    } else if (decodedBody['message'] != null) {
      try {
        final message = decodedBody['message'] as String;
        _controller.add(
          Message(
            author: MessageAuthor.bot,
            message: message,
          ),
        );
      } catch (error) {
        print(error);
      }
    }
  }
}

class Message {
  final String message;
  final MessageAuthor author;

  Message({
    required this.message,
    required this.author,
  });
}

class AudioMessage extends Message {
  final List<int> audioMessage;

  AudioMessage({
    required this.audioMessage,
    required String message,
    required MessageAuthor author,
  }) : super(message: message, author: author);
}
