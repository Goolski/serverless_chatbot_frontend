import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleAuthRepository {
  GoogleAuthRepository();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/calendar',
      'https://www.googleapis.com/auth/tasks',
    ],
  );

  Stream<GoogleSignInAccount?> get googleUserStream =>
      _googleSignIn.onCurrentUserChanged;

  GoogleSignInAccount? get currentUser => _googleSignIn.currentUser;

  void signIn() {
    try {
      _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  void signOut() => _googleSignIn.signOut();
}
