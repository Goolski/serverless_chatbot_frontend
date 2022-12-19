// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatPageState {
  List<Message> get messages => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) initial,
    required TResult Function(List<Message> messages, AppUser user)
        messagesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? initial,
    TResult? Function(List<Message> messages, AppUser user)? messagesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? initial,
    TResult Function(List<Message> messages, AppUser user)? messagesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MessagesUpdated value) messagesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MessagesUpdated value)? messagesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MessagesUpdated value)? messagesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatPageStateCopyWith<ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageStateCopyWith<$Res> {
  factory $ChatPageStateCopyWith(
          ChatPageState value, $Res Function(ChatPageState) then) =
      _$ChatPageStateCopyWithImpl<$Res, ChatPageState>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class _$ChatPageStateCopyWithImpl<$Res, $Val extends ChatPageState>
    implements $ChatPageStateCopyWith<$Res> {
  _$ChatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ChatPageStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$Initial(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required final List<Message> messages})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatPageState.initial(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) initial,
    required TResult Function(List<Message> messages, AppUser user)
        messagesUpdated,
  }) {
    return initial(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? initial,
    TResult? Function(List<Message> messages, AppUser user)? messagesUpdated,
  }) {
    return initial?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? initial,
    TResult Function(List<Message> messages, AppUser user)? messagesUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MessagesUpdated value) messagesUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MessagesUpdated value)? messagesUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MessagesUpdated value)? messagesUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChatPageState {
  const factory Initial({required final List<Message> messages}) = _$Initial;

  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesUpdatedCopyWith<$Res>
    implements $ChatPageStateCopyWith<$Res> {
  factory _$$MessagesUpdatedCopyWith(
          _$MessagesUpdated value, $Res Function(_$MessagesUpdated) then) =
      __$$MessagesUpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages, AppUser user});
}

/// @nodoc
class __$$MessagesUpdatedCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$MessagesUpdated>
    implements _$$MessagesUpdatedCopyWith<$Res> {
  __$$MessagesUpdatedCopyWithImpl(
      _$MessagesUpdated _value, $Res Function(_$MessagesUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? user = null,
  }) {
    return _then(_$MessagesUpdated(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$MessagesUpdated implements MessagesUpdated {
  const _$MessagesUpdated(
      {required final List<Message> messages, required this.user})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final AppUser user;

  @override
  String toString() {
    return 'ChatPageState.messagesUpdated(messages: $messages, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesUpdated &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messages), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesUpdatedCopyWith<_$MessagesUpdated> get copyWith =>
      __$$MessagesUpdatedCopyWithImpl<_$MessagesUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) initial,
    required TResult Function(List<Message> messages, AppUser user)
        messagesUpdated,
  }) {
    return messagesUpdated(messages, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? initial,
    TResult? Function(List<Message> messages, AppUser user)? messagesUpdated,
  }) {
    return messagesUpdated?.call(messages, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? initial,
    TResult Function(List<Message> messages, AppUser user)? messagesUpdated,
    required TResult orElse(),
  }) {
    if (messagesUpdated != null) {
      return messagesUpdated(messages, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MessagesUpdated value) messagesUpdated,
  }) {
    return messagesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MessagesUpdated value)? messagesUpdated,
  }) {
    return messagesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MessagesUpdated value)? messagesUpdated,
    required TResult orElse(),
  }) {
    if (messagesUpdated != null) {
      return messagesUpdated(this);
    }
    return orElse();
  }
}

abstract class MessagesUpdated implements ChatPageState {
  const factory MessagesUpdated(
      {required final List<Message> messages,
      required final AppUser user}) = _$MessagesUpdated;

  @override
  List<Message> get messages;
  AppUser get user;
  @override
  @JsonKey(ignore: true)
  _$$MessagesUpdatedCopyWith<_$MessagesUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
