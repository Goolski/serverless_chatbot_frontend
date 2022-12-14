import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/calendar',
      'https://www.googleapis.com/auth/tasks',
    ],
  );

  Future<bool> get isSignedIn => _googleSignIn.isSignedIn();
}
