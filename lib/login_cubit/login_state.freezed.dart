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
    required TResult Function(Function signInFunction) notSignedIn,
    required TResult Function(String authToken, String userId) signedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(Function signInFunction)? notSignedIn,
    TResult? Function(String authToken, String userId)? signedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Function signInFunction)? notSignedIn,
    TResult Function(String authToken, String userId)? signedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
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
    required TResult Function(Function signInFunction) notSignedIn,
    required TResult Function(String authToken, String userId) signedIn,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(Function signInFunction)? notSignedIn,
    TResult? Function(String authToken, String userId)? signedIn,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Function signInFunction)? notSignedIn,
    TResult Function(String authToken, String userId)? signedIn,
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
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
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
  @useResult
  $Res call({Function signInFunction});
}

/// @nodoc
class __$$NotSignedInCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$NotSignedIn>
    implements _$$NotSignedInCopyWith<$Res> {
  __$$NotSignedInCopyWithImpl(
      _$NotSignedIn _value, $Res Function(_$NotSignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFunction = null,
  }) {
    return _then(_$NotSignedIn(
      signInFunction: null == signInFunction
          ? _value.signInFunction
          : signInFunction // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$NotSignedIn implements NotSignedIn {
  const _$NotSignedIn({required this.signInFunction});

  @override
  final Function signInFunction;

  @override
  String toString() {
    return 'LoginState.notSignedIn(signInFunction: $signInFunction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotSignedIn &&
            (identical(other.signInFunction, signInFunction) ||
                other.signInFunction == signInFunction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFunction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotSignedInCopyWith<_$NotSignedIn> get copyWith =>
      __$$NotSignedInCopyWithImpl<_$NotSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Function signInFunction) notSignedIn,
    required TResult Function(String authToken, String userId) signedIn,
  }) {
    return notSignedIn(signInFunction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(Function signInFunction)? notSignedIn,
    TResult? Function(String authToken, String userId)? signedIn,
  }) {
    return notSignedIn?.call(signInFunction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Function signInFunction)? notSignedIn,
    TResult Function(String authToken, String userId)? signedIn,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn(signInFunction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
  }) {
    return notSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
  }) {
    return notSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    required TResult orElse(),
  }) {
    if (notSignedIn != null) {
      return notSignedIn(this);
    }
    return orElse();
  }
}

abstract class NotSignedIn implements LoginState {
  const factory NotSignedIn({required final Function signInFunction}) =
      _$NotSignedIn;

  Function get signInFunction;
  @JsonKey(ignore: true)
  _$$NotSignedInCopyWith<_$NotSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedInCopyWith<$Res> {
  factory _$$SignedInCopyWith(
          _$SignedIn value, $Res Function(_$SignedIn) then) =
      __$$SignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({String authToken, String userId});
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
    Object? authToken = null,
    Object? userId = null,
  }) {
    return _then(_$SignedIn(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignedIn implements SignedIn {
  const _$SignedIn({required this.authToken, required this.userId});

  @override
  final String authToken;
  @override
  final String userId;

  @override
  String toString() {
    return 'LoginState.signedIn(authToken: $authToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedIn &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      __$$SignedInCopyWithImpl<_$SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(Function signInFunction) notSignedIn,
    required TResult Function(String authToken, String userId) signedIn,
  }) {
    return signedIn(authToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(Function signInFunction)? notSignedIn,
    TResult? Function(String authToken, String userId)? signedIn,
  }) {
    return signedIn?.call(authToken, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(Function signInFunction)? notSignedIn,
    TResult Function(String authToken, String userId)? signedIn,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(authToken, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initialState,
    required TResult Function(NotSignedIn value) notSignedIn,
    required TResult Function(SignedIn value) signedIn,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initialState,
    TResult? Function(NotSignedIn value)? notSignedIn,
    TResult? Function(SignedIn value)? signedIn,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initialState,
    TResult Function(NotSignedIn value)? notSignedIn,
    TResult Function(SignedIn value)? signedIn,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements LoginState {
  const factory SignedIn(
      {required final String authToken,
      required final String userId}) = _$SignedIn;

  String get authToken;
  String get userId;
  @JsonKey(ignore: true)
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
