import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page_cubit.dart';

import '../../../core/injection.dart';
import '../../bloc/login/login_cubit.dart';
import '../../widgets/chat_input_widget/chat_input_cubit.dart';
import '../../widgets/chat_input_widget/chat_input_widget.dart';
import 'chat_page_state.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (_) => BlocProvider(
        create: (_) => getIt<ChatPageCubit>(),
        child: const ChatPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        ElevatedButton(
            onPressed: context.read<LoginCubit>().handleSignOut,
            child: const Icon(Icons.logout))
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: BlocBuilder<ChatPageCubit, ChatPageState>(
                builder: (context, state) => Chat(
                  messages: state.messages,
                  onSendPressed: (_) {},
                  user: User(
                    id: state.user.id,
                    firstName: state.user.displayName,
                    imageUrl: state.user.photoUrl,
                  ),
                  customBottomWidget: ChatInputWidget(
                    onSendPressed: (String message) =>
                        _handleSendPressed(context, message),
                    onRecordPressed: () => startRecording(context),
                    onCancelPressed: () => stopRecording(context),
                    onSendRecordPressed: () => sendRecording(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendRecording(BuildContext context) {
    context.read<ChatPageCubit>().onSendRecording();
  }

  void startRecording(BuildContext context) {
    context.read<ChatPageCubit>().onStartRecording();
  }

  void stopRecording(BuildContext context) {
    context.read<ChatPageCubit>().onStopRecording();
  }

  void _handleSendPressed(BuildContext context, String message) {
    context.read<ChatPageCubit>().onSendText(message: message);
  }
}
