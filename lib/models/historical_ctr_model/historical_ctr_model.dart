import 'package:freezed_annotation/freezed_annotation.dart';

part 'historical_ctr_model.freezed.dart';
part 'historical_ctr_model.g.dart';

@freezed
abstract class HistoricalCtrModel with _$HistoricalCtrModel {
  const factory HistoricalCtrModel({
    @JsonKey(name: "campaign_id") required String campaignId,
    @JsonKey(name: "data_points") required int dataPoints,
    @JsonKey(name: "history") required List<History> history,
  }) = _HistoricalCtrModel;

  factory HistoricalCtrModel.fromJson(Map<String, dynamic> json) =>
      _$HistoricalCtrModelFromJson(json);
}

@freezed
abstract class History with _$History {
  const factory History({
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "impressions") required int impressions,
    @JsonKey(name: "clicks") required int clicks,
    @JsonKey(name: "ctr") required double ctr,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);
}
