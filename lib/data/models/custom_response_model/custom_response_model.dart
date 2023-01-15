import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_response_model.freezed.dart';
part 'custom_response_model.g.dart';

@freezed
class CustomResponseModel with _$CustomResponseModel {
  const factory CustomResponseModel({
    required String type,
    required String? header,
    required List<Map<String, Object?>> objects,
    required String? response,
  }) = _CustomResponseModel;

  factory CustomResponseModel.fromJson(Map<String, Object?> json) =>
      _$CustomResponseModelFromJson(json);
}
