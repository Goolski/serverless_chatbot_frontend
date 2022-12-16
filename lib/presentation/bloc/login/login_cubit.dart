import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:serverless_chatbot/backend/google_auth_repository.dart';

import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final GoogleAuthRepository _googleAuthRepository;

  LoginCubit(this._googleAuthRepository)
      : super(
          const LoginState.initialState(),
        ) {
    checkIfSignedIn();
  }

  void checkIfSignedIn() async {
    if (await _googleAuthRepository.isSignedIn) {
      emit(const LoginState.signedIn());
    } else {
      emit(const LoginState.notSignedIn());
    }
  }

  Future<void> handleSignIn() async {
    final result = _googleAuthRepository.signInFunction();
    await _googleAuthRepository.handleSignIn(result);
    checkIfSignedIn();
  }

  Future<void> handleSignOut() async {
    await _googleAuthRepository.signOutFunction();
    checkIfSignedIn();
  }
}
