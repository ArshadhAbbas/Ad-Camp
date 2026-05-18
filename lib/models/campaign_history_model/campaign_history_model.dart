import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_history_model.freezed.dart';
part 'campaign_history_model.g.dart';

@freezed
abstract class CampaignHistoryModel with _$CampaignHistoryModel {
    const factory CampaignHistoryModel({
        @JsonKey(name: "campaign_id")
        String? campaignId,
        @JsonKey(name: "data_points")
        int? dataPoints,
        @JsonKey(name: "history")
        List<History>? history,
    }) = _CampaignHistoryModel;

    factory CampaignHistoryModel.fromJson(Map<String, dynamic> json) => _$CampaignHistoryModelFromJson(json);
    
}

@freezed
abstract class History with _$History {
    const factory History({
        @JsonKey(name: "date")
        DateTime? date,
        @JsonKey(name: "impressions")
        int? impressions,
        @JsonKey(name: "clicks")
        int? clicks,
        @JsonKey(name: "ctr")
        double? ctr,
    }) = _History;

    factory History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);
}
