// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      name: json['name'] as String,
      startDate: EventDateModel.fromJson(json['start'] as Map<String, dynamic>),
      endDate: EventDateModel.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'start': instance.startDate,
      'end': instance.endDate,
    };
