// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_metrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LiveMetricsModel _$LiveMetricsModelFromJson(Map<String, dynamic> json) =>
    _LiveMetricsModel(
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      campaigns: (json['campaigns'] as List<dynamic>?)
          ?.map((e) => LiveCampaignMetric.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveMetricsModelToJson(_LiveMetricsModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
      'campaigns': instance.campaigns,
    };

_Campaign _$CampaignFromJson(Map<String, dynamic> json) => _Campaign(
  id: json['id'] as String?,
  impressionsLastHour: (json['impressions_last_hour'] as num?)?.toInt(),
  clicksLastHour: (json['clicks_last_hour'] as num?)?.toInt(),
  spendLastHour: (json['spend_last_hour'] as num?)?.toDouble(),
  ctrLastHour: (json['ctr_last_hour'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CampaignToJson(_Campaign instance) => <String, dynamic>{
  'id': instance.id,
  'impressions_last_hour': instance.impressionsLastHour,
  'clicks_last_hour': instance.clicksLastHour,
  'spend_last_hour': instance.spendLastHour,
  'ctr_last_hour': instance.ctrLastHour,
};
