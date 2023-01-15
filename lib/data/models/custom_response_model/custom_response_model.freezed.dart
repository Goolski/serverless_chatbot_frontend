// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomResponseModel _$CustomResponseModelFromJson(Map<String, dynamic> json) {
  return _CustomResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CustomResponseModel {
  String get type => throw _privateConstructorUsedError;
  String? get header => throw _privateConstructorUsedError;
  List<Map<String, Object?>> get objects => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomResponseModelCopyWith<CustomResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomResponseModelCopyWith<$Res> {
  factory $CustomResponseModelCopyWith(
          CustomResponseModel value, $Res Function(CustomResponseModel) then) =
      _$CustomResponseModelCopyWithImpl<$Res, CustomResponseModel>;
  @useResult
  $Res call(
      {String type,
      String? header,
      List<Map<String, Object?>> objects,
      String? response});
}

/// @nodoc
class _$CustomResponseModelCopyWithImpl<$Res, $Val extends CustomResponseModel>
    implements $CustomResponseModelCopyWith<$Res> {
  _$CustomResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? header = freezed,
    Object? objects = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomResponseModelCopyWith<$Res>
    implements $CustomResponseModelCopyWith<$Res> {
  factory _$$_CustomResponseModelCopyWith(_$_CustomResponseModel value,
          $Res Function(_$_CustomResponseModel) then) =
      __$$_CustomResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String? header,
      List<Map<String, Object?>> objects,
      String? response});
}

/// @nodoc
class __$$_CustomResponseModelCopyWithImpl<$Res>
    extends _$CustomResponseModelCopyWithImpl<$Res, _$_CustomResponseModel>
    implements _$$_CustomResponseModelCopyWith<$Res> {
  __$$_CustomResponseModelCopyWithImpl(_$_CustomResponseModel _value,
      $Res Function(_$_CustomResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? header = freezed,
    Object? objects = null,
    Object? response = freezed,
  }) {
    return _then(_$_CustomResponseModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomResponseModel implements _CustomResponseModel {
  const _$_CustomResponseModel(
      {required this.type,
      required this.header,
      required final List<Map<String, Object?>> objects,
      required this.response})
      : _objects = objects;

  factory _$_CustomResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomResponseModelFromJson(json);

  @override
  final String type;
  @override
  final String? header;
  final List<Map<String, Object?>> _objects;
  @override
  List<Map<String, Object?>> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  @override
  final String? response;

  @override
  String toString() {
    return 'CustomResponseModel(type: $type, header: $header, objects: $objects, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomResponseModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, header,
      const DeepCollectionEquality().hash(_objects), response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomResponseModelCopyWith<_$_CustomResponseModel> get copyWith =>
      __$$_CustomResponseModelCopyWithImpl<_$_CustomResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomResponseModelToJson(
      this,
    );
  }
}

abstract class _CustomResponseModel implements CustomResponseModel {
  const factory _CustomResponseModel(
      {required final String type,
      required final String? header,
      required final List<Map<String, Object?>> objects,
      required final String? response}) = _$_CustomResponseModel;

  factory _CustomResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CustomResponseModel.fromJson;

  @override
  String get type;
  @override
  String? get header;
  @override
  List<Map<String, Object?>> get objects;
  @override
  String? get response;
  @override
  @JsonKey(ignore: true)
  _$$_CustomResponseModelCopyWith<_$_CustomResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
