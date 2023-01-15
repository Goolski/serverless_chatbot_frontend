import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:serverless_chatbot/data/models/event_model/event_model.dart';
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page_cubit.dart';
import 'package:serverless_chatbot/presentation/widgets/chat_audio_message_widget/chat_audio_message_widget.dart';
import 'package:serverless_chatbot/presentation/widgets/cultural_event_widget.dart';
import 'package:serverless_chatbot/presentation/widgets/event_widget.dart';
import 'package:serverless_chatbot/presentation/widgets/task_widget.dart';
import 'package:serverless_chatbot/presentation/widgets/weather_widget.dart';

import '../../../core/injection.dart';
import '../../../data/models/task_model/task_model.dart';
import '../../../data/models/weather_model/weather_model.dart';
import '../../bloc/login/login_cubit.dart';
import '../../widgets/chat_audio_message_widget/chat_audio_message_cubit.dart';
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
      appBar: AppBar(
        title: const Text('Chatbot'),
        actions: [
          ElevatedButton(
            onPressed: context.read<LoginCubit>().handleSignOut,
            child: const Icon(Icons.logout),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: BlocBuilder<ChatPageCubit, ChatPageState>(
                builder: (context, state) => Chat(
                  theme: DefaultChatTheme(
                    primaryColor: Theme.of(context).colorScheme.primary,
                  ),
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
                  customMessageBuilder: (p0, {messageWidth = 0}) =>
                      CustomMessageWidget(p0: p0),
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

class CustomMessageWidget extends StatelessWidget {
  final CustomMessage p0;
  const CustomMessageWidget({
    required this.p0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (p0.metadata!['type']) {
      case 'audio':
        return BlocProvider(
          create: (_) =>
              getIt<ChatAudioMessageCubit>(param1: p0.metadata!['audio'])
                ..play(),
          child: ChatAudioMessageWidget(
            message: p0.metadata!['message'],
          ),
        );
      case 'weather':
        final weather = p0.metadata!['message'] as WeatherModel;
        return WeatherWidget(
          pressure: weather.pressure.toDouble(),
          temperature: weather.temperature.toDouble(),
          weather: weather.weather,
          city: weather.city,
        );
      case 'event':
        final event = p0.metadata!['message'] as EventModel;
        return EventWidget(
          title: event.name,
          startDate: event.startDate.date,
          endDate: event.endDate.date,
        );
      case 'task':
        final task = p0.metadata!['message'] as TaskModel;
        return TaskWidget(
          title: task.title,
          description: task.description,
          dueDate: task.deadline,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
