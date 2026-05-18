// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignHistoryModel _$CampaignHistoryModelFromJson(
  Map<String, dynamic> json,
) => _CampaignHistoryModel(
  campaignId: json['campaign_id'] as String?,
  dataPoints: (json['data_points'] as num?)?.toInt(),
  history: (json['history'] as List<dynamic>?)
      ?.map((e) => History.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CampaignHistoryModelToJson(
  _CampaignHistoryModel instance,
) => <String, dynamic>{
  'campaign_id': instance.campaignId,
  'data_points': instance.dataPoints,
  'history': instance.history,
};

_History _$HistoryFromJson(Map<String, dynamic> json) => _History(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  impressions: (json['impressions'] as num?)?.toInt(),
  clicks: (json['clicks'] as num?)?.toInt(),
  ctr: (json['ctr'] as num?)?.toDouble(),
);

Map<String, dynamic> _$HistoryToJson(_History instance) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'impressions': instance.impressions,
  'clicks': instance.clicks,
  'ctr': instance.ctr,
};
