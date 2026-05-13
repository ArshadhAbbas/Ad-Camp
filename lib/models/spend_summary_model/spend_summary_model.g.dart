// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpendSummaryModel _$SpendSummaryModelFromJson(Map<String, dynamic> json) =>
    _SpendSummaryModel(
      range: json['range'] as String?,
      summary: json['summary'] == null
          ? null
          : Summary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpendSummaryModelToJson(_SpendSummaryModel instance) =>
    <String, dynamic>{'range': instance.range, 'summary': instance.summary};

_Summary _$SummaryFromJson(Map<String, dynamic> json) => _Summary(
  totalSpend: (json['total_spend'] as num?)?.toInt(),
  totalImpressions: (json['total_impressions'] as num?)?.toInt(),
  totalClicks: (json['total_clicks'] as num?)?.toInt(),
  overallCtr: (json['overall_ctr'] as num?)?.toDouble(),
  byChannel: (json['by_channel'] as List<dynamic>?)
      ?.map((e) => ByChannel.fromJson(e as Map<String, dynamic>))
      .toList(),
  topCampaigns: (json['top_campaigns'] as List<dynamic>?)
      ?.map((e) => TopCampaign.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SummaryToJson(_Summary instance) => <String, dynamic>{
  'total_spend': instance.totalSpend,
  'total_impressions': instance.totalImpressions,
  'total_clicks': instance.totalClicks,
  'overall_ctr': instance.overallCtr,
  'by_channel': instance.byChannel,
  'top_campaigns': instance.topCampaigns,
};

_ByChannel _$ByChannelFromJson(Map<String, dynamic> json) => _ByChannel(
  channel: json['channel'] as String?,
  spend: (json['spend'] as num?)?.toInt(),
  impressions: (json['impressions'] as num?)?.toInt(),
  clicks: (json['clicks'] as num?)?.toInt(),
);

Map<String, dynamic> _$ByChannelToJson(_ByChannel instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'spend': instance.spend,
      'impressions': instance.impressions,
      'clicks': instance.clicks,
    };

_TopCampaign _$TopCampaignFromJson(Map<String, dynamic> json) => _TopCampaign(
  id: json['id'] as String?,
  name: json['name'] as String?,
  ctr: (json['ctr'] as num?)?.toDouble(),
  spend: (json['spend'] as num?)?.toInt(),
);

Map<String, dynamic> _$TopCampaignToJson(_TopCampaign instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ctr': instance.ctr,
      'spend': instance.spend,
    };
