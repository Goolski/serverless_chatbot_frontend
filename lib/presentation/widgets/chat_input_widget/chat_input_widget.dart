import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'chat_input_cubit.dart';
import 'chat_input_state.dart';

class ChatInputWidget extends StatefulWidget {
  final Function onSendPressed;
  final Function onRecordPressed;
  final Function onSendRecordPressed;
  final Function onCancelPressed;
  const ChatInputWidget({
    required this.onSendPressed,
    required this.onRecordPressed,
    required this.onSendRecordPressed,
    required this.onCancelPressed,
    super.key,
  });

  @override
  State<ChatInputWidget> createState() => _ChatInputWidgetState();
}

class _ChatInputWidgetState extends State<ChatInputWidget> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<ChatInputCubit, ChatInputState>(
        listenWhen: (previous, current) => current is Initial,
        listener: (context, state) => _controller.clear(),
        builder: (context, state) => state.map(
          initial: (value) => Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _controller,
                  onChanged: (value) => context
                      .read<ChatInputCubit>()
                      .updateTextInput(input: value),
                ),
              ),
              IconButton(
                onPressed: () => onMicPressed(context: context),
                icon: const Icon(Icons.mic),
              ),
            ],
          ),
          typing: (value) => Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _controller,
                  onChanged: (value) => context
                      .read<ChatInputCubit>()
                      .updateTextInput(input: value),
                  decoration: InputDecoration(
                      suffixIcon: value.text != ''
                          ? IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () => sendPressed(
                                context: context,
                                message: value.text,
                              ),
                            )
                          : null),
                ),
              ),
              IconButton(
                onPressed: () => onMicPressed(context: context),
                icon: const Icon(Icons.mic),
              ),
            ],
          ),
          recording: (value) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => onCancel(context: context),
                icon: const Icon(Icons.cancel),
              ),
              IconButton(
                onPressed: () => onAcceptRecording(context: context),
                icon: const Icon(Icons.done),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sendPressed({required BuildContext context, required String message}) {
    widget.onSendPressed(message);
    context.read<ChatInputCubit>().onTextSend();
  }

  void onMicPressed({required BuildContext context}) {
    widget.onRecordPressed();
    context.read<ChatInputCubit>().onMicPressed();
  }

  void onCancel({required BuildContext context}) {
    widget.onCancelPressed();
    context.read<ChatInputCubit>().onRecordingStopped();
  }

  void onAcceptRecording({required BuildContext context}) {
    widget.onSendRecordPressed();
    context.read<ChatInputCubit>().onRecordingStopped();
  }
}
