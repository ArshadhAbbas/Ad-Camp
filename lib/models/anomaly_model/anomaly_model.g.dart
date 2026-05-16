// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Anomaly _$AnomalyFromJson(Map<String, dynamic> json) => _Anomaly(
  id: json['id'] as String?,
  campaignId: json['campaign_id'] as String?,
  campaignName: json['campaign_name'] as String?,
  detectedAt: json['detected_at'] == null
      ? null
      : DateTime.parse(json['detected_at'] as String),
  type: json['type'] as String?,
  severity: json['severity'] as String?,
  metric: json['metric'] as String?,
  actualValue: (json['actual_value'] as num?)?.toDouble(),
  expectedValue: (json['expected_value'] as num?)?.toDouble(),
  deviationPercent: (json['deviation_percent'] as num?)?.toDouble(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$AnomalyToJson(_Anomaly instance) => <String, dynamic>{
  'id': instance.id,
  'campaign_id': instance.campaignId,
  'campaign_name': instance.campaignName,
  'detected_at': instance.detectedAt?.toIso8601String(),
  'type': instance.type,
  'severity': instance.severity,
  'metric': instance.metric,
  'actual_value': instance.actualValue,
  'expected_value': instance.expectedValue,
  'deviation_percent': instance.deviationPercent,
  'message': instance.message,
};
