import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:serverless_chatbot/backend.dart';
import 'package:serverless_chatbot/backend_record.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatefulWidget {
  final String authToken;
  final String user_id;
  const ChatScreen({
    required this.authToken,
    required this.user_id,
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: 'ServelessChatbotUser');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Chat(
                messages: _messages,
                onSendPressed: _handleSendPressed,
                user: _user,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: startRecording,
                  child: Text('Start recording'),
                ),
                TextButton(
                  onPressed: stopRecording,
                  child: Text('Stop Recording'),
                ),
                TextButton(
                  onPressed: sendRecording,
                  child: Text('Send Recording'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void sendRecording() async {
    final encodedAudio = (await getEncodedRecording());
    final response = askBotWithAudio(
      encodedAudio: encodedAudio!,
      authToken: widget.authToken,
      userId: widget.user_id,
    );
    print(await response);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
    _getBotMessage(message).then((value) => _addMessage(value));
  }

  Future<types.TextMessage> _getBotMessage(types.PartialText message) async {
    final bot = types.User(id: 'Bot', firstName: 'Chatbot');
    print(widget.authToken);
    final result = await askBot(
      message: message.text,
      authToken: widget.authToken,
      userId: widget.user_id,
    );
    return types.TextMessage(
      author: bot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: Uuid().v4(),
      text: result,
    );
  }
}
