import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

const URL = '3p4mjoachc.execute-api.eu-west-2.amazonaws.com';

Future<String> askBot({
  required String message,
  required String authToken,
}) async {
  final url = Uri.https(URL, '/core');
  final body = {
    "lex_args": {
      "userId": "2222",
      "inputText": message,
    },
  };
  final response = (await http.post(url,
      body: jsonEncode(body),
      headers: {HttpHeaders.authorizationHeader: "Bearer $authToken"}));
  final responseMessage = jsonDecode(response.body)['message'];
  return responseMessage;
}
