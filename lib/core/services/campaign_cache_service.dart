import 'package:ad_camp/core/constants/string_constants.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:hive_ce/hive.dart';

class CampaignCacheService {
  static const _key = 'campaigns';

  final Box<CampaignsListModel> box = Hive.box<CampaignsListModel>(StringConstants.campaignBox);

  Future<void> cacheCampaigns(CampaignsListModel model) async {
    await box.put(_key, model);
  }

  CampaignsListModel? getCachedCampaigns() {
    return box.get(_key);
  }
}
