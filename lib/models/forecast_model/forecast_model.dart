import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
abstract class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    @JsonKey(name: "campaign_id") String? campaignId,
    @JsonKey(name: "horizon_days") int? horizonDays,
    @JsonKey(name: "model") String? model,
    @JsonKey(name: "generated_at") DateTime? generatedAt,
    @JsonKey(name: "forecast") List<Forecast>? forecast,
    @JsonKey(name: "recommendation") Recommendation? recommendation,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);
}

@freezed
abstract class Forecast with _$Forecast {
  const factory Forecast({
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "predicted_ctr") double? predictedCtr,
    @JsonKey(name: "lower_bound") double? lowerBound,
    @JsonKey(name: "upper_bound") double? upperBound,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);
}

@freezed
abstract class Recommendation with _$Recommendation {
  const factory Recommendation({
    @JsonKey(name: "trend") String? trend,
    @JsonKey(name: "change_percent") double? changePercent,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "suggested_daily_budget") int? suggestedDailyBudget,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);
}
