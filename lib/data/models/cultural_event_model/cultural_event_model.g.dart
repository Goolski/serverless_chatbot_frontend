// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cultural_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CulturalEventModel _$$_CulturalEventModelFromJson(
        Map<String, dynamic> json) =>
    _$_CulturalEventModel(
      name: json['event_name'] as String,
      startDate: DateTime.parse(json['datetime_start'] as String),
      endDate: DateTime.parse(json['datetime_end'] as String),
      location: json['location'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_CulturalEventModelToJson(
        _$_CulturalEventModel instance) =>
    <String, dynamic>{
      'event_name': instance.name,
      'datetime_start': instance.startDate.toIso8601String(),
      'datetime_end': instance.endDate.toIso8601String(),
      'location': instance.location,
      'link': instance.link,
    };
