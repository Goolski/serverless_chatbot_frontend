import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../../bloc/login/login_cubit.dart';
import '../../bloc/login/login_state.dart';

const iconSize = 100.0;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) => state.maybeWhen(
        notSignedIn: () => Scaffold(
          backgroundColor: Theme.of(context).primaryColorDark,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Chatbot',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: SignInButton(
                  Buttons.Google,
                  onPressed: context.read<LoginCubit>().handleSignIn,
                  text: 'Sign in or Sign Up with Google',
                ),
              ),
            ],
          ),
        ),
        orElse: () => const Scaffold(body: SizedBox.shrink()),
      ),
    );
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
