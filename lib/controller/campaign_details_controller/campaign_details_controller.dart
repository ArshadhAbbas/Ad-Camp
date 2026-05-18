import 'package:ad_camp/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart';
import 'package:ad_camp/models/campaign_details_model/campaign_details_model.dart';
import 'package:ad_camp/models/campaign_history_model/campaign_history_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_details_controller.g.dart';

class CampaignDetailsControllerModel {
  final CampaignDetailsModel campaignDetails;
  final CampaignHistoryModel campaignHistory;

  CampaignDetailsControllerModel({required this.campaignDetails, required this.campaignHistory});
}

@riverpod
class CampaignDetailsController extends _$CampaignDetailsController {
  @override
  Future<CampaignDetailsControllerModel> build({required String campid}) async {
    final repository = ref.watch(campaignRepositoryProvider);
    final detailsFuture = repository.fetchCampaignDetails(campaignId: campid);
    final historyFuture = repository.fetchCampaignHistory(campaignId: campid);

    final campaignDetails = await detailsFuture;
    final campaignHistory = await historyFuture;

    return CampaignDetailsControllerModel(
      campaignDetails: campaignDetails,
      campaignHistory: campaignHistory,
    );
  }
}
