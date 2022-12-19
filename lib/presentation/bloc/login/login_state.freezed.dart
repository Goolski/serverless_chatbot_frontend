// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() notSignedIn,
    required TResult Function(GoogleSignInAccount account) signedIn,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? notSignedIn,
    TResult? Function(GoogleSignInAccount account)? signedIn,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? notSignedIn,
    TResult Function(GoogleSignInAccount account)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LoginState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() notSignedIn,
    required TResult Function(GoogleSignInAccount account) signedIn,
    required TResult Function() loading,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? notSignedIn,
    TResult? Function(GoogleSignInAccount account)? signedIn,
    TResult? Function()? loading,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? notSignedIn,
    TResult Function(GoogleSignInAccount account)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(Loading value) loading,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(Loading value)? loading,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$NotSignedInCopyWith<$Res> {
  factory _$$NotSignedInCopyWith(
          _$NotSignedIn value, $Res Function(_$NotSignedIn) then) =
      __$$NotSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotSignedInCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$NotSignedIn>
    implements _$$NotSignedInCopyWith<$Res> {
  __$$NotSignedInCopyWithImpl(
      _$NotSignedIn _value, $Res Function(_$NotSignedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotSignedIn implements NotSignedIn {
  const _$NotSignedIn();

  @override
  String toString() {
    return 'LoginState.notSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() notSignedIn,
    required TResult Function(GoogleSignInAccount account) signedIn,
    required TResult Function() loading,
  }) {
    return notSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? notSignedIn,
    TResult? Function(GoogleSignInAccount account)? signedIn,
    TResult? Function()? loading,
  }) {
    return notSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? notSignedIn,
    TResult Function(GoogleSignInAccount account)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(Loading value) loading,
  }) {
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(Loading value)? loading,
  }) {
    return notSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn(this);
    }
    return orElse();
  }
}

abstract class NotSignedIn implements LoginState {
  const factory NotSignedIn() = _$NotSignedIn;
}

/// @nodoc
abstract class _$$SignedInCopyWith<$Res> {
  factory _$$SignedInCopyWith(
          _$SignedIn value, $Res Function(_$SignedIn) then) =
      __$$SignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleSignInAccount account});
}

/// @nodoc
class __$$SignedInCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SignedIn>
    implements _$$SignedInCopyWith<$Res> {
  __$$SignedInCopyWithImpl(_$SignedIn _value, $Res Function(_$SignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$SignedIn(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as GoogleSignInAccount,
    ));
  }
}

/// @nodoc

class _$SignedIn implements SignedIn {
  const _$SignedIn({required this.account});

  @override
  final GoogleSignInAccount account;

  @override
  String toString() {
    return 'LoginState.signedIn(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedIn &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      __$$SignedInCopyWithImpl<_$SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() notSignedIn,
    required TResult Function(GoogleSignInAccount account) signedIn,
    required TResult Function() loading,
  }) {
    return signedIn(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? notSignedIn,
    TResult? Function(GoogleSignInAccount account)? signedIn,
    TResult? Function()? loading,
  }) {
    return signedIn?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? notSignedIn,
    TResult Function(GoogleSignInAccount account)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(Loading value) loading,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(Loading value)? loading,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements LoginState {
  const factory SignedIn({required final GoogleSignInAccount account}) =
      _$SignedIn;

  GoogleSignInAccount get account;
  @JsonKey(ignore: true)
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() notSignedIn,
    required TResult Function(GoogleSignInAccount account) signedIn,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? notSignedIn,
    TResult? Function(GoogleSignInAccount account)? signedIn,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? notSignedIn,
    TResult Function(GoogleSignInAccount account)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}
