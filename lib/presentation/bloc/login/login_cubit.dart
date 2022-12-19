import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../data/data_sources/google_auth_repository.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final GoogleAuthRepository _googleAuthRepository;

  late final StreamSubscription<GoogleSignInAccount?>
      _googleUserStreamSusbscription;

  LoginCubit(this._googleAuthRepository)
      : super(
          const LoginState.initialState(),
        ) {
    init();
  }

  void init() {
    _googleAuthRepository.googleUserStream.listen((event) {});
  }

  void checkIfSignedIn({required GoogleSignInAccount? potentialAccount}) async {
    if (potentialAccount == null) {
      emit(const LoginState.notSignedIn());
    } else {
      emit(LoginState.signedIn(account: potentialAccount));
    }
  }

  void handleSignIn() {
    _googleAuthRepository.signIn();
  }

  void handleSignOut() {
    _googleAuthRepository.signOut();
  }
}
