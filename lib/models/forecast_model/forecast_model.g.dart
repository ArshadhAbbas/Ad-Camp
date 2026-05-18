// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) =>
    _ForecastModel(
      campaignId: json['campaign_id'] as String?,
      horizonDays: (json['horizon_days'] as num?)?.toInt(),
      model: json['model'] as String?,
      generatedAt: json['generated_at'] == null
          ? null
          : DateTime.parse(json['generated_at'] as String),
      forecast: (json['forecast'] as List<dynamic>?)
          ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendation: json['recommendation'] == null
          ? null
          : Recommendation.fromJson(
              json['recommendation'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ForecastModelToJson(_ForecastModel instance) =>
    <String, dynamic>{
      'campaign_id': instance.campaignId,
      'horizon_days': instance.horizonDays,
      'model': instance.model,
      'generated_at': instance.generatedAt?.toIso8601String(),
      'forecast': instance.forecast,
      'recommendation': instance.recommendation,
    };

_Forecast _$ForecastFromJson(Map<String, dynamic> json) => _Forecast(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  predictedCtr: (json['predicted_ctr'] as num?)?.toDouble(),
  lowerBound: (json['lower_bound'] as num?)?.toDouble(),
  upperBound: (json['upper_bound'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ForecastToJson(_Forecast instance) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'predicted_ctr': instance.predictedCtr,
  'lower_bound': instance.lowerBound,
  'upper_bound': instance.upperBound,
};

_Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    _Recommendation(
      trend: json['trend'] as String?,
      changePercent: (json['change_percent'] as num?)?.toDouble(),
      message: json['message'] as String?,
      suggestedDailyBudget: (json['suggested_daily_budget'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RecommendationToJson(_Recommendation instance) =>
    <String, dynamic>{
      'trend': instance.trend,
      'change_percent': instance.changePercent,
      'message': instance.message,
      'suggested_daily_budget': instance.suggestedDailyBudget,
    };
