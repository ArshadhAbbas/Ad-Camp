import 'package:freezed_annotation/freezed_annotation.dart';

part 'anomaly_model.freezed.dart';
part 'anomaly_model.g.dart';

@freezed
abstract class AnomalyModel with _$AnomalyModel {
  const factory AnomalyModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "campaign_id") String? campaignId,
    @JsonKey(name: "campaign_name") String? campaignName,
    @JsonKey(name: "detected_at") DateTime? detectedAt,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "severity") String? severity,
    @JsonKey(name: "metric") String? metric,
    @JsonKey(name: "actual_value") double? actualValue,
    @JsonKey(name: "expected_value") double? expectedValue,
    @JsonKey(name: "deviation_percent") double? deviationPercent,
    @JsonKey(name: "message") String? message,
  }) = _Anomaly;

  factory AnomalyModel.fromJson(Map<String, dynamic> json) => _$AnomalyModelFromJson(json);
}
