import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  late final GoogleSignIn _googleSignIn;
  LoginCubit() : super(const LoginState.initialState()) {
    _googleSignIn = GoogleSignIn(
      scopes: [
        'https://www.googleapis.com/auth/calendar',
        'https://www.googleapis.com/auth/tasks',
      ],
    );
    if (_googleSignIn.currentUser != null) {
      print(_googleSignIn.currentUser!);
      getTokens(_googleSignIn.currentUser!);
    } else {
      emit(LoginState.notSignedIn(signInFunction: _googleSignIn.signIn));
    }
  }

  Future<void> handleSignIn(GoogleSignInAccount? googleSignInAccount) async {
    try {
      if (googleSignInAccount != null) {
        getTokens(googleSignInAccount);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> getTokens(GoogleSignInAccount googleSignInAccount) async {
    try {
      final authToken =
          (await (await googleSignInAccount.authentication).accessToken);
      final userId = googleSignInAccount.id;
      if (authToken != null) {
        emit(
          LoginState.signedIn(
            authToken: authToken,
            userId: userId,
          ),
        );
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> handleSignOut() async {
    await _googleSignIn.signOut();
    emit(LoginState.notSignedIn(signInFunction: _googleSignIn.signIn));
  }
}
