import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleAuthRepository {
  GoogleAuthRepository() {
    init();
  }
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/calendar',
      'https://www.googleapis.com/auth/tasks',
    ],
  );

  void init() {
    _googleSignIn.isSignedIn().then((signedIn) {
      if (signedIn) {
        handleSignIn(_googleSignIn.currentUser);
      }
    });
  }

  final GoogleUserStream _googleUserStream = GoogleUserStream();

  Future<bool> get isSignedIn => _googleSignIn.isSignedIn();
  Stream<GoogleUser> get userStream => _googleUserStream.stream;

  void reemitLastUser() {
    _googleUserStream.reemitLastValue();
  }

  Function get signInFunction => _googleSignIn.signIn;

  Future<void> handleSignIn(GoogleSignInAccount? potentialAccount) async {
    if (potentialAccount == null) {
      return;
    } else {
      final accessToken = (await potentialAccount.authentication).accessToken;
      final result = GoogleUser(
        id: potentialAccount.id,
        email: potentialAccount.email,
        accessToken: accessToken,
        displayName: potentialAccount.displayName,
        photoUrl: potentialAccount.photoUrl,
      );
      _googleUserStream.add(result);
    }
  }

  Future<void> handleSignOut() async {
    await _googleSignIn.signOut();
  }
}

class GoogleUserStream {
  final StreamController<GoogleUser> _controller =
      StreamController<GoogleUser>();

  GoogleUser? lastGoogleUser;

  void add(GoogleUser newGoogleUser) {
    lastGoogleUser = newGoogleUser;
    _controller.sink.add(newGoogleUser);
  }

  void reemitLastValue() {
    if (lastGoogleUser != null) {
      _controller.sink.add(lastGoogleUser!);
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
