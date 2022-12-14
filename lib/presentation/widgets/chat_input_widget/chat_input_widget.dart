import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_input_cubit.dart';
import 'chat_input_state.dart';

class ChatInputWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: BlocBuilder<ChatInputCubit, ChatInputState>(
        builder: (context, state) => state.map(
          initial: (value) => Row(
            children: [
              Flexible(
                child: TextField(
                  onChanged: (value) => context
                      .read<ChatInputCubit>()
                      .updateTextInput(input: value),
                ),
              ),
              IconButton(
                onPressed: () => onMicPressed(context: context),
                icon: Icon(Icons.mic),
              ),
            ],
          ),
          typing: (value) => Row(
            children: [
              Flexible(
                child: TextField(
                  onChanged: (value) => context
                      .read<ChatInputCubit>()
                      .updateTextInput(input: value),
                  decoration: InputDecoration(
                      suffixIcon: value.text != ''
                          ? IconButton(
                              icon: Icon(Icons.send),
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
                icon: Icon(Icons.mic),
              ),
            ],
          ),
          recording: (value) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => onCancel(context: context),
                icon: Icon(Icons.cancel),
              ),
              IconButton(
                onPressed: () => onAcceptRecording(context: context),
                icon: Icon(Icons.done),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sendPressed({required BuildContext context, required String message}) {
    onSendPressed(message);
    context.read<ChatInputCubit>().onTextSend();
  }

  void onMicPressed({required BuildContext context}) {
    onRecordPressed();
    context.read<ChatInputCubit>().onMicPressed();
  }

  void onCancel({required BuildContext context}) {
    onCancelPressed();
    context.read<ChatInputCubit>().onRecordingStopped();
  }

  void onAcceptRecording({required BuildContext context}) {
    onSendRecordPressed();
    context.read<ChatInputCubit>().onRecordingStopped();
  }
}
