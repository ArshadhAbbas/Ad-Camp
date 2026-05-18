import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_details_model.freezed.dart';
part 'campaign_details_model.g.dart';

@freezed
abstract class CampaignDetailsModel with _$CampaignDetailsModel {
  const factory CampaignDetailsModel({@JsonKey(name: "campaign") Campaign? campaign}) =
      _CampaignDetailsModel;

  factory CampaignDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignDetailsModelFromJson(json);
}

@freezed
abstract class Campaign with _$Campaign {
  const factory Campaign({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "objective") String? objective,
    @JsonKey(name: "channel") String? channel,
    @JsonKey(name: "budget") int? budget,
    @JsonKey(name: "spend") int? spend,
    @JsonKey(name: "impressions") int? impressions,
    @JsonKey(name: "clicks") int? clicks,
    @JsonKey(name: "conversions") int? conversions,
    @JsonKey(name: "cost_per_click") double? costPerClick,
    @JsonKey(name: "cost_per_conversion") double? costPerConversion,
    @JsonKey(name: "start_date") DateTime? startDate,
    @JsonKey(name: "end_date") DateTime? endDate,
    @JsonKey(name: "currency") String? currency,
    @JsonKey(name: "target_audience") TargetAudience? targetAudience,
    @JsonKey(name: "daily_budget") int? dailyBudget,
    @JsonKey(name: "ctr") double? ctr,
    @JsonKey(name: "budget_utilization") double? budgetUtilization,
  }) = _Campaign;

  factory Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);
}

@freezed
abstract class TargetAudience with _$TargetAudience {
  const factory TargetAudience({
    @JsonKey(name: "age_range") String? ageRange,
    @JsonKey(name: "regions") List<String>? regions,
    @JsonKey(name: "interests") List<String>? interests,
  }) = _TargetAudience;

  factory TargetAudience.fromJson(Map<String, dynamic> json) => _$TargetAudienceFromJson(json);
}
