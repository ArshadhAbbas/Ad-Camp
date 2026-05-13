import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/data_source/campaign_data_source.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:ad_camp/repository/campaign_repository/campaign_repository.dart';
import 'package:ad_camp/repository/campaign_repository/campaign_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_data_source_controller.g.dart';

@riverpod
CampaignDataSource campaignDataSource(Ref ref) {
  return CampaignDataSource();
}

@riverpod
CampaignRepository campaignRepository(Ref ref) {
  return CampaignRepositoryImpl(campaignDataSource: ref.watch(campaignDataSourceProvider));
}

class CampaignDataControllerModel {
  final CampaignsListModel originalList;
  final CampaignsListModel filteredList;
  final CampaignStatusEnum? selectedStatusFilter;
  final CampaignObjectiveEnum? selectedObjectiveFilter;
  final String? searchText;

  CampaignDataControllerModel({
    required this.originalList,
    required this.filteredList,
    this.selectedStatusFilter,
    this.selectedObjectiveFilter,
    this.searchText,
  });

  CampaignDataControllerModel copyWith({
    CampaignsListModel? originalList,
    CampaignsListModel? filteredList,
    CampaignStatusEnum? selectedStatusFilter,
    CampaignObjectiveEnum? selectedObjectiveFilter,
    String? searchText,
  }) {
    return CampaignDataControllerModel(
      originalList: originalList ?? this.originalList,
      filteredList: filteredList ?? this.filteredList,
      selectedStatusFilter: selectedStatusFilter ?? this.selectedStatusFilter,
      selectedObjectiveFilter: selectedObjectiveFilter ?? this.selectedObjectiveFilter,
      searchText: searchText ?? this.searchText,
    );
  }
}

@riverpod
class CampaignDataSourceController extends _$CampaignDataSourceController {
  @override
  Future<CampaignDataControllerModel> build() async {
    final repository = ref.watch(campaignRepositoryProvider);
    final fetchCampaigns = await repository.fetchCampaigns();

    return CampaignDataControllerModel(originalList: fetchCampaigns, filteredList: fetchCampaigns);
  }

  void filterStatus(CampaignStatusEnum? status) {
    final currentState = state.value;
    if (currentState == null) return;

    final filtered =
        currentState.originalList.campaigns
            ?.where((campaign) => campaign.status?.toLowerCase() == status?.name.toLowerCase())
            .toList() ??
        [];
    if (status == null) {
      state = AsyncValue.data(
        CampaignDataControllerModel(
          originalList: currentState.originalList,
          filteredList: currentState.originalList,
          selectedStatusFilter: null,
        ),
      );
      return;
    }
    state = AsyncValue.data(
      currentState.copyWith(
        filteredList: CampaignsListModel(campaigns: filtered, total: filtered.length),
        selectedStatusFilter: status,
      ),
    );
  }
}
