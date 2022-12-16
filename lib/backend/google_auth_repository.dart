import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/calendar',
      'https://www.googleapis.com/auth/tasks',
    ],
  );

  final GoogleUserStream _googleUserStream = GoogleUserStream();

  Future<bool> get isSignedIn => _googleSignIn.isSignedIn();
  Stream<GoogleUser> get userStream => _googleUserStream.stream;
  void reemitLastUser() => _googleUserStream.reemitLastValue();

  Function get signInFunction => _googleSignIn.signIn;
  Function get signOutFunction => _googleSignIn.signOut;

  Future<void> handleSignIn(
      Future<GoogleSignInAccount?> potentialAccount) async {
    final result = potentialAccount;
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
          _googleUserStream.add(result);
        }
      },
    );
  }
}

class GoogleUserStream {
  final StreamController<GoogleUser> _controller =
      StreamController<GoogleUser>();

  GoogleUser? lastGoogleUser;

  void add(GoogleUser newGoogleUser) {
    lastGoogleUser = newGoogleUser;
    _controller.add(newGoogleUser);
  }

  void reemitLastValue() {
    if (lastGoogleUser != null) {
      _controller.add(lastGoogleUser!);
    }
  }

  Stream<GoogleUser> get stream => _controller.stream;
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
