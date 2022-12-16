import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/backend/google_auth_repository.dart';
import 'package:serverless_chatbot/core/injection.dart';
import 'package:serverless_chatbot/presentation/bloc/login/login_cubit.dart';
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page.dart';

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
      builder: (context, child) => BlocListener<LoginCubit, LoginState>(
        listener: (context, state) => state.when(
            initialState: () => Navigator.of(context).pushAndRemoveUntil<void>(
                LoadingPage.route(), (route) => false),
            notSignedIn: () => Navigator.of(context)
                .pushAndRemoveUntil<void>(LoginPage.route(), (route) => false),
            signedIn: () => () {
                  print('hello World');
                }),
        child: child,
      ),
    );
  }
}
