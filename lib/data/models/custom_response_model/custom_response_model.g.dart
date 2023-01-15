// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomResponseModel _$$_CustomResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomResponseModel(
      type: json['type'] as String,
      header: json['header'] as String?,
      objects: (json['objects'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      response: json['response'] as String?,
    );

Map<String, dynamic> _$$_CustomResponseModelToJson(
        _$_CustomResponseModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'header': instance.header,
      'objects': instance.objects,
      'response': instance.response,
    };
