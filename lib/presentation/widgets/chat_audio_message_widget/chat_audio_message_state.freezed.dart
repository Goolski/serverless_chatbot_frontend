// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_audio_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatAudioMessageState {
  List<int> get audioBytes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> audioBytes) initial,
    required TResult Function(List<int> audioBytes) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> audioBytes)? initial,
    TResult? Function(List<int> audioBytes)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> audioBytes)? initial,
    TResult Function(List<int> audioBytes)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stopped value) initial,
    required TResult Function(Playing value) playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stopped value)? initial,
    TResult? Function(Playing value)? playing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stopped value)? initial,
    TResult Function(Playing value)? playing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatAudioMessageStateCopyWith<ChatAudioMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAudioMessageStateCopyWith<$Res> {
  factory $ChatAudioMessageStateCopyWith(ChatAudioMessageState value,
          $Res Function(ChatAudioMessageState) then) =
      _$ChatAudioMessageStateCopyWithImpl<$Res, ChatAudioMessageState>;
  @useResult
  $Res call({List<int> audioBytes});
}

/// @nodoc
class _$ChatAudioMessageStateCopyWithImpl<$Res,
        $Val extends ChatAudioMessageState>
    implements $ChatAudioMessageStateCopyWith<$Res> {
  _$ChatAudioMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioBytes = null,
  }) {
    return _then(_value.copyWith(
      audioBytes: null == audioBytes
          ? _value.audioBytes
          : audioBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoppedCopyWith<$Res>
    implements $ChatAudioMessageStateCopyWith<$Res> {
  factory _$$StoppedCopyWith(_$Stopped value, $Res Function(_$Stopped) then) =
      __$$StoppedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> audioBytes});
}

/// @nodoc
class __$$StoppedCopyWithImpl<$Res>
    extends _$ChatAudioMessageStateCopyWithImpl<$Res, _$Stopped>
    implements _$$StoppedCopyWith<$Res> {
  __$$StoppedCopyWithImpl(_$Stopped _value, $Res Function(_$Stopped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioBytes = null,
  }) {
    return _then(_$Stopped(
      audioBytes: null == audioBytes
          ? _value._audioBytes
          : audioBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$Stopped implements Stopped {
  _$Stopped({required final List<int> audioBytes}) : _audioBytes = audioBytes;

  final List<int> _audioBytes;
  @override
  List<int> get audioBytes {
    if (_audioBytes is EqualUnmodifiableListView) return _audioBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioBytes);
  }

  @override
  String toString() {
    return 'ChatAudioMessageState.initial(audioBytes: $audioBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Stopped &&
            const DeepCollectionEquality()
                .equals(other._audioBytes, _audioBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_audioBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoppedCopyWith<_$Stopped> get copyWith =>
      __$$StoppedCopyWithImpl<_$Stopped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> audioBytes) initial,
    required TResult Function(List<int> audioBytes) playing,
  }) {
    return initial(audioBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> audioBytes)? initial,
    TResult? Function(List<int> audioBytes)? playing,
  }) {
    return initial?.call(audioBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> audioBytes)? initial,
    TResult Function(List<int> audioBytes)? playing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(audioBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stopped value) initial,
    required TResult Function(Playing value) playing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stopped value)? initial,
    TResult? Function(Playing value)? playing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stopped value)? initial,
    TResult Function(Playing value)? playing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Stopped implements ChatAudioMessageState {
  factory Stopped({required final List<int> audioBytes}) = _$Stopped;

  @override
  List<int> get audioBytes;
  @override
  @JsonKey(ignore: true)
  _$$StoppedCopyWith<_$Stopped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayingCopyWith<$Res>
    implements $ChatAudioMessageStateCopyWith<$Res> {
  factory _$$PlayingCopyWith(_$Playing value, $Res Function(_$Playing) then) =
      __$$PlayingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> audioBytes});
}

/// @nodoc
class __$$PlayingCopyWithImpl<$Res>
    extends _$ChatAudioMessageStateCopyWithImpl<$Res, _$Playing>
    implements _$$PlayingCopyWith<$Res> {
  __$$PlayingCopyWithImpl(_$Playing _value, $Res Function(_$Playing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioBytes = null,
  }) {
    return _then(_$Playing(
      audioBytes: null == audioBytes
          ? _value._audioBytes
          : audioBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$Playing implements Playing {
  _$Playing({required final List<int> audioBytes}) : _audioBytes = audioBytes;

  final List<int> _audioBytes;
  @override
  List<int> get audioBytes {
    if (_audioBytes is EqualUnmodifiableListView) return _audioBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioBytes);
  }

  @override
  String toString() {
    return 'ChatAudioMessageState.playing(audioBytes: $audioBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Playing &&
            const DeepCollectionEquality()
                .equals(other._audioBytes, _audioBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_audioBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingCopyWith<_$Playing> get copyWith =>
      __$$PlayingCopyWithImpl<_$Playing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> audioBytes) initial,
    required TResult Function(List<int> audioBytes) playing,
  }) {
    return playing(audioBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> audioBytes)? initial,
    TResult? Function(List<int> audioBytes)? playing,
  }) {
    return playing?.call(audioBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> audioBytes)? initial,
    TResult Function(List<int> audioBytes)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(audioBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Stopped value) initial,
    required TResult Function(Playing value) playing,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Stopped value)? initial,
    TResult? Function(Playing value)? playing,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Stopped value)? initial,
    TResult Function(Playing value)? playing,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class Playing implements ChatAudioMessageState {
  factory Playing({required final List<int> audioBytes}) = _$Playing;

  @override
  List<int> get audioBytes;
  @override
  @JsonKey(ignore: true)
  _$$PlayingCopyWith<_$Playing> get copyWith =>
      throw _privateConstructorUsedError;
}
