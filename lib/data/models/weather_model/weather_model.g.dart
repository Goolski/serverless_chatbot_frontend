// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      city: json['city'] as String,
      weather: json['overall'] as String,
      temperature: json['temperature'] as num,
      pressure: json['pressure'] as num,
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'city': instance.city,
      'overall': instance.weather,
      'temperature': instance.temperature,
      'pressure': instance.pressure,
    };
