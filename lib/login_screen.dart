import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:serverless_chatbot/chat_input_widget/chat_input_cubit.dart';

import 'chat_screen.dart';
import 'login_cubit/login_cubit.dart';
import 'login_cubit/login_state.dart';

const iconSize = 100.0;

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) => state.whenOrNull(
        signedIn: (authToken, userId) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              authToken: authToken,
              userId: userId,
            ),
          ),
        ),
      ),
      builder: (context, state) => state.maybeWhen(
        notSignedIn: (signInFunction) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(child: Logo()),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () => _handleSignIn(
                    context: context,
                    signInFunction: signInFunction,
                  ),
                ),
              ),
            ],
          ),
        ),
        initialState: () => CircularProgressIndicator(),
        orElse: () => Scaffold(body: SizedBox.shrink()),
      ),
    );
  }

  Future<void> _handleSignIn(
      {required BuildContext context, required Function signInFunction}) async {
    try {
      final result = await signInFunction();
      context.read<LoginCubit>().handleSignIn(result);
    } catch (error) {
      print(error);
    }
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: iconSize,
            width: iconSize,
            child: Icon(
              Icons.developer_board_off,
              size: iconSize * 0.8,
            ),
          ),
          Container(
            height: iconSize * 0.8,
            width: iconSize * 0.8,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Icon(
                    Icons.chat,
                    size: iconSize * 0.3,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.smart_toy,
                    size: iconSize * 0.65,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
