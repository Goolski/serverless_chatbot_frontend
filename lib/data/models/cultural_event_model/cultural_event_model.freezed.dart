// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cultural_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CulturalEventModel _$CulturalEventModelFromJson(Map<String, dynamic> json) {
  return _CulturalEventModel.fromJson(json);
}

/// @nodoc
mixin _$CulturalEventModel {
  @JsonKey(name: 'event_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_start')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_end')
  DateTime get endDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CulturalEventModelCopyWith<CulturalEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CulturalEventModelCopyWith<$Res> {
  factory $CulturalEventModelCopyWith(
          CulturalEventModel value, $Res Function(CulturalEventModel) then) =
      _$CulturalEventModelCopyWithImpl<$Res, CulturalEventModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'event_name') String name,
      @JsonKey(name: 'datetime_start') DateTime startDate,
      @JsonKey(name: 'datetime_end') DateTime endDate,
      String? location,
      String? link});
}

/// @nodoc
class _$CulturalEventModelCopyWithImpl<$Res, $Val extends CulturalEventModel>
    implements $CulturalEventModelCopyWith<$Res> {
  _$CulturalEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CulturalEventModelCopyWith<$Res>
    implements $CulturalEventModelCopyWith<$Res> {
  factory _$$_CulturalEventModelCopyWith(_$_CulturalEventModel value,
          $Res Function(_$_CulturalEventModel) then) =
      __$$_CulturalEventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'event_name') String name,
      @JsonKey(name: 'datetime_start') DateTime startDate,
      @JsonKey(name: 'datetime_end') DateTime endDate,
      String? location,
      String? link});
}

/// @nodoc
class __$$_CulturalEventModelCopyWithImpl<$Res>
    extends _$CulturalEventModelCopyWithImpl<$Res, _$_CulturalEventModel>
    implements _$$_CulturalEventModelCopyWith<$Res> {
  __$$_CulturalEventModelCopyWithImpl(
      _$_CulturalEventModel _value, $Res Function(_$_CulturalEventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_CulturalEventModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CulturalEventModel implements _CulturalEventModel {
  const _$_CulturalEventModel(
      {@JsonKey(name: 'event_name') required this.name,
      @JsonKey(name: 'datetime_start') required this.startDate,
      @JsonKey(name: 'datetime_end') required this.endDate,
      this.location,
      this.link});

  factory _$_CulturalEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_CulturalEventModelFromJson(json);

  @override
  @JsonKey(name: 'event_name')
  final String name;
  @override
  @JsonKey(name: 'datetime_start')
  final DateTime startDate;
  @override
  @JsonKey(name: 'datetime_end')
  final DateTime endDate;
  @override
  final String? location;
  @override
  final String? link;

  @override
  String toString() {
    return 'CulturalEventModel(name: $name, startDate: $startDate, endDate: $endDate, location: $location, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CulturalEventModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, startDate, endDate, location, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CulturalEventModelCopyWith<_$_CulturalEventModel> get copyWith =>
      __$$_CulturalEventModelCopyWithImpl<_$_CulturalEventModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CulturalEventModelToJson(
      this,
    );
  }
}

abstract class _CulturalEventModel implements CulturalEventModel {
  const factory _CulturalEventModel(
      {@JsonKey(name: 'event_name') required final String name,
      @JsonKey(name: 'datetime_start') required final DateTime startDate,
      @JsonKey(name: 'datetime_end') required final DateTime endDate,
      final String? location,
      final String? link}) = _$_CulturalEventModel;

  factory _CulturalEventModel.fromJson(Map<String, dynamic> json) =
      _$_CulturalEventModel.fromJson;

  @override
  @JsonKey(name: 'event_name')
  String get name;
  @override
  @JsonKey(name: 'datetime_start')
  DateTime get startDate;
  @override
  @JsonKey(name: 'datetime_end')
  DateTime get endDate;
  @override
  String? get location;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_CulturalEventModelCopyWith<_$_CulturalEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
