import 'package:ad_camp/data_source/campaign_data_source.dart';
import 'package:ad_camp/models/campaign_details_model/campaign_details_model.dart';
import 'package:ad_camp/models/campaign_history_model/campaign_history_model.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:ad_camp/models/forecast_model/forecast_model.dart';
import 'package:ad_camp/repository/campaign_repository/campaign_repository.dart';

class CampaignRepositoryImpl implements CampaignRepository {
  CampaignRepositoryImpl({required this.campaignDataSource});

  final CampaignDataSource campaignDataSource;

  @override
  Future<CampaignsListModel> fetchCampaigns() async {
    final campaigns = await campaignDataSource.fetchCampaigns();
    return CampaignsListModel.fromJson(campaigns);
  }

  @override
  Future<CampaignDetailsModel> fetchCampaignDetails({required String campaignId}) async {
    final campaignDetails = await campaignDataSource.fetchCampaignDetails(campId: campaignId);
    return CampaignDetailsModel.fromJson(campaignDetails);
  }

  @override
  Future<CampaignHistoryModel> fetchCampaignHistory({required String campaignId}) async {
    var fetchCampaignHistory = await campaignDataSource.fetchCampaignHistory(
      campaignId: campaignId,
    );
    return CampaignHistoryModel.fromJson(fetchCampaignHistory);
  }

  @override
  Future<ForecastModel> fetchCampaignForecast({required CampaignHistoryModel history}) async {
    var fetchForecast = await campaignDataSource.fetchForecast(history: history);
    return ForecastModel.fromJson(fetchForecast);
  }
}
