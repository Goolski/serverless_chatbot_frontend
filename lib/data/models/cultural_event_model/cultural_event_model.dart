import 'package:freezed_annotation/freezed_annotation.dart';

part 'cultural_event_model.freezed.dart';
part 'cultural_event_model.g.dart';

@freezed
class CulturalEventModel with _$CulturalEventModel {
  const factory CulturalEventModel({
    @JsonKey(name: 'event_name') required String name,
    @JsonKey(name: 'datetime_start') required DateTime startDate,
    @JsonKey(name: 'datetime_end') required DateTime endDate,
    String? location,
    String? link,
  }) = _CulturalEventModel;

  factory CulturalEventModel.fromJson(Map<String, Object?> json) =>
      _$CulturalEventModelFromJson(json);
}
