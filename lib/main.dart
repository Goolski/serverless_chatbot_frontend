import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/presentation/bloc/login/login_cubit.dart';
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page.dart';

import 'presentation/bloc/login/login_state.dart';
import 'presentation/pages/loading_page/loading_page.dart';
import 'presentation/pages/login_page/login_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => BlocListener<LoginCubit, LoginState>(
        listener: (context, state) => state.when(
          initialState: () => Navigator.of(context)
              .pushAndRemoveUntil<void>(LoadingPage.route(), (route) => false),
          notSignedIn: (_) => Navigator.of(context)
              .pushAndRemoveUntil<void>(LoginPage.route(), (route) => false),
          signedIn: (authToken, userId) => Navigator.of(context)
              .pushAndRemoveUntil<void>(ChatPage.route(), (route) => false),
        ),
      ),
    );
  }
}
