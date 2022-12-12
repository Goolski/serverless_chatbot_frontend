import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:serverless_chatbot/backend.dart';
import 'package:serverless_chatbot/backend_record.dart';
import 'package:serverless_chatbot/chat_input_widget/chat_input_cubit.dart';
import 'package:serverless_chatbot/chat_input_widget/chat_input_widget.dart';
import 'package:uuid/uuid.dart';

import 'chat_input_widget/chat_input_state.dart';
import 'login_cubit/login_cubit.dart';

class ChatScreen extends StatefulWidget {
  final String authToken;
  final String userId;
  const ChatScreen({
    required this.authToken,
    required this.userId,
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
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context
                  .read<LoginCubit>()
                  .handleSignOut()
                  .then((value) => Navigator.pop(context));
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Chat(
                messages: _messages,
                onSendPressed: (_) {},
                user: _user,
                customBottomWidget: BlocProvider(
                  create: (_) => ChatInputCubit(ChatInputState.initial()),
                  child: ChatInputWidget(
                    onSendPressed: _handleSendPressed,
                    onRecordPressed: startRecording,
                    onCancelPressed: stopRecording,
                    onSendRecordPressed: sendRecording,
                  ),
                ),
              ),
            ),
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
      userId: widget.userId,
    );
    print(await response);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(String message) {
    final partialMessage = types.PartialText(text: message);
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: Uuid().v4(),
      text: partialMessage.text,
    );

    _addMessage(textMessage);
    _getBotMessage(message).then((value) => _addMessage(value));
  }

  Future<types.TextMessage> _getBotMessage(String message) async {
    final bot = types.User(id: 'Bot', firstName: 'Chatbot');
    print(widget.authToken);
    final result = await askBot(
      message: message,
      authToken: widget.authToken,
      userId: widget.userId,
    );
    return types.TextMessage(
      author: bot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: Uuid().v4(),
      text: result,
    );
  }
}
