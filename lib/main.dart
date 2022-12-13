import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverless_chatbot/login_cubit/login_cubit.dart';
import 'package:serverless_chatbot/login_cubit/login_state.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => LoginCubit(),
        child: LoginScreen(),
      ),
    );
  }
}
