import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/core/injection.dart';
import 'package:serverless_chatbot/presentation/bloc/login/login_cubit.dart';
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page.dart';
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page_cubit.dart';
import 'package:serverless_chatbot/presentation/widgets/chat_input_widget/chat_input_cubit.dart';

import 'presentation/bloc/login/login_state.dart';
import 'presentation/pages/loading_page/loading_page.dart';
import 'presentation/pages/login_page/login_page.dart';

void main() {
  configureInjection();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return state.maybeWhen(
            signedIn: (account) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => getIt<ChatPageCubit>(param1: account),
                ),
                BlocProvider(
                  create: (_) => ChatInputCubit(),
                ),
              ],
              child: const ChatPage(),
            ),
            notSignedIn: () => const LoginPage(),
            orElse: () => const LoadingPage(),
          );
        },
      ),
      onGenerateRoute: (_) => LoadingPage.route(),
    );
  }
}
