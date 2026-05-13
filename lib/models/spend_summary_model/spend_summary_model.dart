import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_summary_model.freezed.dart';
part 'spend_summary_model.g.dart';

@freezed
abstract class SpendSummaryModel with _$SpendSummaryModel {
  const factory SpendSummaryModel({
    @JsonKey(name: "range") String? range,
    @JsonKey(name: "summary") Summary? summary,
  }) = _SpendSummaryModel;

  factory SpendSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SpendSummaryModelFromJson(json);
}

@freezed
abstract class Summary with _$Summary {
  const factory Summary({
    @JsonKey(name: "total_spend") int? totalSpend,
    @JsonKey(name: "total_impressions") int? totalImpressions,
    @JsonKey(name: "total_clicks") int? totalClicks,
    @JsonKey(name: "overall_ctr") double? overallCtr,
    @JsonKey(name: "by_channel") List<ByChannel>? byChannel,
    @JsonKey(name: "top_campaigns") List<TopCampaign>? topCampaigns,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);
}

@freezed
abstract class ByChannel with _$ByChannel {
  const factory ByChannel({
    @JsonKey(name: "channel") String? channel,
    @JsonKey(name: "spend") int? spend,
    @JsonKey(name: "impressions") int? impressions,
    @JsonKey(name: "clicks") int? clicks,
  }) = _ByChannel;

  factory ByChannel.fromJson(Map<String, dynamic> json) => _$ByChannelFromJson(json);
}

@freezed
abstract class TopCampaign with _$TopCampaign {
  const factory TopCampaign({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "ctr") double? ctr,
    @JsonKey(name: "spend") int? spend,
  }) = _TopCampaign;

  factory TopCampaign.fromJson(Map<String, dynamic> json) => _$TopCampaignFromJson(json);
}
