// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignDetailsModel _$CampaignDetailsModelFromJson(
  Map<String, dynamic> json,
) => _CampaignDetailsModel(
  campaign: json['campaign'] == null
      ? null
      : Campaign.fromJson(json['campaign'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CampaignDetailsModelToJson(
  _CampaignDetailsModel instance,
) => <String, dynamic>{'campaign': instance.campaign};

_Campaign _$CampaignFromJson(Map<String, dynamic> json) => _Campaign(
  id: json['id'] as String?,
  name: json['name'] as String?,
  status: json['status'] as String?,
  objective: json['objective'] as String?,
  channel: json['channel'] as String?,
  budget: (json['budget'] as num?)?.toInt(),
  spend: (json['spend'] as num?)?.toInt(),
  impressions: (json['impressions'] as num?)?.toInt(),
  clicks: (json['clicks'] as num?)?.toInt(),
  conversions: (json['conversions'] as num?)?.toInt(),
  costPerClick: (json['cost_per_click'] as num?)?.toDouble(),
  costPerConversion: (json['cost_per_conversion'] as num?)?.toDouble(),
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  currency: json['currency'] as String?,
  targetAudience: json['target_audience'] == null
      ? null
      : TargetAudience.fromJson(
          json['target_audience'] as Map<String, dynamic>,
        ),
  dailyBudget: (json['daily_budget'] as num?)?.toInt(),
  ctr: (json['ctr'] as num?)?.toDouble(),
  budgetUtilization: (json['budget_utilization'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CampaignToJson(_Campaign instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'objective': instance.objective,
  'channel': instance.channel,
  'budget': instance.budget,
  'spend': instance.spend,
  'impressions': instance.impressions,
  'clicks': instance.clicks,
  'conversions': instance.conversions,
  'cost_per_click': instance.costPerClick,
  'cost_per_conversion': instance.costPerConversion,
  'start_date': instance.startDate?.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'currency': instance.currency,
  'target_audience': instance.targetAudience,
  'daily_budget': instance.dailyBudget,
  'ctr': instance.ctr,
  'budget_utilization': instance.budgetUtilization,
};

_TargetAudience _$TargetAudienceFromJson(Map<String, dynamic> json) =>
    _TargetAudience(
      ageRange: json['age_range'] as String?,
      regions: (json['regions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TargetAudienceToJson(_TargetAudience instance) =>
    <String, dynamic>{
      'age_range': instance.ageRange,
      'regions': instance.regions,
      'interests': instance.interests,
    };
