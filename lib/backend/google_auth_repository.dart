import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/calendar',
      'https://www.googleapis.com/auth/tasks',
    ],
  );

  final StreamController<GoogleUser> _streamController =
      StreamController<GoogleUser>();

  Future<bool> get isSignedIn => _googleSignIn.isSignedIn();
  Stream<GoogleUser> get userStream => _streamController.stream;

  void get signInFunction => signIn;
  void get signOutFunction => signOut;

  void signIn() {
    final result = _googleSignIn.signIn();
    result.then(
      (value) async {
        if (value == null) {
          return;
        } else {
          final accessToken = (await value.authentication).accessToken;
          final result = GoogleUser(
            id: value.id,
            email: value.email,
            accessToken: accessToken,
            displayName: value.displayName,
            photoUrl: value.photoUrl,
          );
          _streamController.add(result);
        }
      },
    );
  }

  void signOut() {
    _googleSignIn.signOut();
  }
}

class GoogleUser {
  final String id;
  final String email;
  final String? displayName;
  final String? photoUrl;
  final String? accessToken;

  GoogleUser({
    required this.id,
    required this.email,
    this.accessToken,
    this.displayName,
    this.photoUrl,
  });
}
