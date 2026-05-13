import 'package:ad_camp/data_source/campaign_data_source.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:ad_camp/repository/campaign_repository/campaign_repository.dart';

class CampaignRepositoryImpl implements CampaignRepository {
  CampaignRepositoryImpl({required this.campaignDataSource});

  final CampaignDataSource campaignDataSource;

  @override
  Future<CampaignsListModel> fetchCampaigns() async {
    final campaigns = await campaignDataSource.fetchCampaigns();
    return CampaignsListModel.fromJson(campaigns);
  }
}
