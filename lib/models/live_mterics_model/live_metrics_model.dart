import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_metrics_model.freezed.dart';
part 'live_metrics_model.g.dart';

@freezed
abstract class LiveMetricsModel with _$LiveMetricsModel {
  const factory LiveMetricsModel({
    @JsonKey(name: "timestamp") DateTime? timestamp,
    @JsonKey(name: "campaigns") List<LiveCampaignMetric>? campaigns,
  }) = _LiveMetricsModel;

  factory LiveMetricsModel.fromJson(Map<String, dynamic> json) => _$LiveMetricsModelFromJson(json);
}

@freezed
abstract class LiveCampaignMetric with _$LiveCampaignMetric {
  const factory LiveCampaignMetric({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "impressions_last_hour") int? impressionsLastHour,
    @JsonKey(name: "clicks_last_hour") int? clicksLastHour,
    @JsonKey(name: "spend_last_hour") double? spendLastHour,
    @JsonKey(name: "ctr_last_hour") double? ctrLastHour,
  }) = _Campaign;

  factory LiveCampaignMetric.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);
}
