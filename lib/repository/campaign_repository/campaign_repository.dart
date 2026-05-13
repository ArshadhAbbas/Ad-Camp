import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';

abstract class CampaignRepository {
  Future<CampaignsListModel> fetchCampaigns();
}
