import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initialState() = Initial;
  const factory LoginState.notSignedIn() = NotSignedIn;
  const factory LoginState.signedIn() = SignedIn;
}
