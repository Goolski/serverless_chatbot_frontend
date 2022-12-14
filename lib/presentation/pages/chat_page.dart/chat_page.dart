import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:uuid/uuid.dart';

import '../../../backend/chatbot_backend.dart';
import '../../widgets/chat_input_widget/chat_input_cubit.dart';
import '../../widgets/chat_input_widget/chat_input_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const ChatPage());
  }

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                onSendPressed: (_) {},
                user: _user,
                customBottomWidget: BlocProvider(
                  create: (context) => ChatInputCubit(),
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

  void sendRecording() async {}

  void startRecording() async {}

  void stopRecording() async {}

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

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  Future<types.TextMessage> _getBotMessage(String message) async {
    final bot = types.User(id: 'Bot', firstName: 'Chatbot');
    print(widget.authToken);
    final result = await sendRequest(
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
