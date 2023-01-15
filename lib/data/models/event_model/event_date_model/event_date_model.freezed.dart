// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_date_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDateModel _$EventDateModelFromJson(Map<String, dynamic> json) {
  return _EventDateModel.fromJson(json);
}

/// @nodoc
mixin _$EventDateModel {
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDateModelCopyWith<EventDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDateModelCopyWith<$Res> {
  factory $EventDateModelCopyWith(
          EventDateModel value, $Res Function(EventDateModel) then) =
      _$EventDateModelCopyWithImpl<$Res, EventDateModel>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$EventDateModelCopyWithImpl<$Res, $Val extends EventDateModel>
    implements $EventDateModelCopyWith<$Res> {
  _$EventDateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDateModelCopyWith<$Res>
    implements $EventDateModelCopyWith<$Res> {
  factory _$$_EventDateModelCopyWith(
          _$_EventDateModel value, $Res Function(_$_EventDateModel) then) =
      __$$_EventDateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_EventDateModelCopyWithImpl<$Res>
    extends _$EventDateModelCopyWithImpl<$Res, _$_EventDateModel>
    implements _$$_EventDateModelCopyWith<$Res> {
  __$$_EventDateModelCopyWithImpl(
      _$_EventDateModel _value, $Res Function(_$_EventDateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_EventDateModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDateModel implements _EventDateModel {
  const _$_EventDateModel({required this.date});

  factory _$_EventDateModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventDateModelFromJson(json);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'EventDateModel(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDateModel &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDateModelCopyWith<_$_EventDateModel> get copyWith =>
      __$$_EventDateModelCopyWithImpl<_$_EventDateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDateModelToJson(
      this,
    );
  }
}

abstract class _EventDateModel implements EventDateModel {
  const factory _EventDateModel({required final DateTime date}) =
      _$_EventDateModel;

  factory _EventDateModel.fromJson(Map<String, dynamic> json) =
      _$_EventDateModel.fromJson;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_EventDateModelCopyWith<_$_EventDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
