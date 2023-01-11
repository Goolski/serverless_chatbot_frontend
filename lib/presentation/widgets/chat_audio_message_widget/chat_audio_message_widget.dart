import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/presentation/widgets/chat_audio_message_widget/chat_audio_message_cubit.dart';

import 'chat_audio_message_state.dart';

class ChatAudioMessageWidget extends StatelessWidget {
  final String message;
  const ChatAudioMessageWidget({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatAudioMessageCubit, ChatAudioMessageState>(
      builder: (context, state) => Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: state.when(
          initial: (audioBytes) => TextButton(
            onPressed: context.read<ChatAudioMessageCubit>().play,
            child: Text(
              message,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          playing: (audioBytes) => TextButton(
            onPressed: context.read<ChatAudioMessageCubit>().stop,
            child: Text(
              message,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
