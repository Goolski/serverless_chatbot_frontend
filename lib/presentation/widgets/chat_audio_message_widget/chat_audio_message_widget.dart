import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/presentation/widgets/chat_audio_message_widget/chat_audio_message_cubit.dart';

import 'chat_audio_message_state.dart';

class ChatAudioMessageWidget extends StatelessWidget {
  const ChatAudioMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatAudioMessageCubit, ChatAudioMessageState>(
      builder: (context, state) => state.when(
        initial: (audioBytes) => ElevatedButton(
          onPressed: context.read<ChatAudioMessageCubit>().play,
          child: const Icon(Icons.play_arrow),
        ),
        playing: (audioBytes) => ElevatedButton(
          onPressed: context.read<ChatAudioMessageCubit>().stop,
          child: const Icon(Icons.stop),
        ),
      ),
    );
  }
}
