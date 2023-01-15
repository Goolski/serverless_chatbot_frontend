// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDateModel _$$_EventDateModelFromJson(Map<String, dynamic> json) =>
    _$_EventDateModel(
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_EventDateModelToJson(_$_EventDateModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
    };
