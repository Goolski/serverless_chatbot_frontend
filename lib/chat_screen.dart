import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:serverless_chatbot/backend.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatefulWidget {
  final String token;
  const ChatScreen({
    required this.token,
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
        child: Chat(
          messages: _messages,
          onSendPressed: _handleSendPressed,
          user: _user,
        ),
      ),
    );
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
    print(widget.token);
    final result = await askBot(
      message: message.text,
      authToken: widget.token,
    );
    return types.TextMessage(
      author: bot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: Uuid().v4(),
      text: result,
    );
  }
}
