import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/presentation/widgets/chat_audio_message_widget/chat_audio_message_cubit.dart';

import 'chat_audio_message_state.dart';

class ChatAudioMessageWidget extends StatelessWidget {
  const ChatAudioMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatAudioMessageCubit, ChatAudioMessageState>(
      builder: (context, state) => state.when(
        initial: (audioBytes) => TextButton(
          onPressed: context.read<ChatAudioMessageCubit>().play,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.transparent,
            ),
          ),
          child: const Icon(Icons.play_arrow),
        ),
        playing: (audioBytes) => TextButton(
          onPressed: context.read<ChatAudioMessageCubit>().stop,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.transparent,
            ),
          ),
          child: const Icon(Icons.stop),
        ),
      ),
    );
  }
}
