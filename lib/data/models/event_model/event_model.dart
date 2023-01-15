import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_date_model/event_date_model.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String name,
    @JsonKey(name: 'start') required EventDateModel startDate,
    @JsonKey(name: 'end') required EventDateModel endDate,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}
