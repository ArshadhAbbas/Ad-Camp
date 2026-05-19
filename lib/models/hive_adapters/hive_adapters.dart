import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:hive_ce/hive_ce.dart';

@GenerateAdapters([AdapterSpec<CampaignsListModel>(), AdapterSpec<Campaign>()])
part 'hive_adapters.g.dart';