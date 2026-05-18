import 'package:ad_camp/models/campaign_details_model/campaign_details_model.dart';
import 'package:ad_camp/models/campaign_history_model/campaign_history_model.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:ad_camp/models/forecast_model/forecast_model.dart';

abstract class CampaignRepository {
  Future<CampaignsListModel> fetchCampaigns();
  Future<CampaignDetailsModel> fetchCampaignDetails({required String campaignId});
  Future<CampaignHistoryModel> fetchCampaignHistory({required String campaignId});
  Future<ForecastModel> fetchCampaignForecast({required CampaignHistoryModel history});
}
