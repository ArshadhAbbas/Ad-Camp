// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaigns_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignsListModel _$CampaignsListModelFromJson(Map<String, dynamic> json) =>
    _CampaignsListModel(
      campaigns: (json['campaigns'] as List<dynamic>?)
          ?.map((e) => Campaign.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CampaignsListModelToJson(_CampaignsListModel instance) =>
    <String, dynamic>{'campaigns': instance.campaigns, 'total': instance.total};

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
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  currency: json['currency'] as String?,
  thumbnail: json['thumbnail'] as String?,
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
  'start_date': instance.startDate?.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'currency': instance.currency,
  'thumbnail': instance.thumbnail,
  'ctr': instance.ctr,
  'budget_utilization': instance.budgetUtilization,
};
