import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_date_model.freezed.dart';
part 'event_date_model.g.dart';

@freezed
class EventDateModel with _$EventDateModel {
  const factory EventDateModel({
    required DateTime date,
  }) = _EventDateModel;

  factory EventDateModel.fromJson(Map<String, Object?> json) =>
      _$EventDateModelFromJson(json);
}
