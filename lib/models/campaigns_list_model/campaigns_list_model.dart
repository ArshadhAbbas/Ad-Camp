import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaigns_list_model.freezed.dart';
part 'campaigns_list_model.g.dart';

@freezed
abstract class CampaignsListModel with _$CampaignsListModel {
  const factory CampaignsListModel({
    @JsonKey(name: "campaigns") List<Campaign>? campaigns,
    @JsonKey(name: "total") int? total,
  }) = _CampaignsListModel;

  factory CampaignsListModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignsListModelFromJson(json);
}

@freezed
abstract class Campaign with _$Campaign {
  const factory Campaign({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "objective") String? objective,
    @JsonKey(name: "channel") String? channel,
    @JsonKey(name: "budget") int? budget,
    @JsonKey(name: "spend") int? spend,
    @JsonKey(name: "impressions") int? impressions,
    @JsonKey(name: "clicks") int? clicks,
    @JsonKey(name: "start_date") DateTime? startDate,
    @JsonKey(name: "end_date") DateTime? endDate,
    @JsonKey(name: "currency") String? currency,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "ctr") double? ctr,
    @JsonKey(name: "budget_utilization") double? budgetUtilization,
  }) = _Campaign;

  factory Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);
}
