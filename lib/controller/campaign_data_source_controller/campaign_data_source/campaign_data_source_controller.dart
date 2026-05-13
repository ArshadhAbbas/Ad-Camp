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
    Object? selectedStatusFilter = _empty,
    Object? selectedObjectiveFilter = _empty,
    Object? searchText = _empty,
  }) {
    return CampaignDataControllerModel(
      originalList: originalList ?? this.originalList,

      filteredList: filteredList ?? this.filteredList,

      selectedStatusFilter: selectedStatusFilter == _empty
          ? this.selectedStatusFilter
          : selectedStatusFilter as CampaignStatusEnum?,

      selectedObjectiveFilter: selectedObjectiveFilter == _empty
          ? this.selectedObjectiveFilter
          : selectedObjectiveFilter as CampaignObjectiveEnum?,

      searchText: searchText == _empty ? this.searchText : searchText as String?,
    );
  }
}

const _empty = Object();

@Riverpod(keepAlive: true)
class CampaignDataSourceController extends _$CampaignDataSourceController {
  @override
  Future<CampaignDataControllerModel> build() async {
    final repository = ref.watch(campaignRepositoryProvider);

    final campaigns = await repository.fetchCampaigns();

    return CampaignDataControllerModel(originalList: campaigns, filteredList: campaigns);
  }

  void filterStatus(CampaignStatusEnum? status) {
    final currentState = state.value;
    if (currentState == null) return;
    final updated = currentState.copyWith(selectedStatusFilter: status);
    applyFilters(updated);
  }

  void filterObjective(CampaignObjectiveEnum? objective) {
    final currentState = state.value;
    if (currentState == null) return;
    final updated = currentState.copyWith(selectedObjectiveFilter: objective);
    applyFilters(updated);
  }

  void searchCampaigns(String search) {
    final currentState = state.value;
    if (currentState == null) return;
    final updated = currentState.copyWith(searchText: search);
    applyFilters(updated);
  }

  void clearFilters() {
    final currentState = state.value;

    if (currentState == null) return;

    state = AsyncValue.data(
      CampaignDataControllerModel(
        originalList: currentState.originalList,

        filteredList: currentState.originalList,
      ),
    );
  }

  void applyFilters(CampaignDataControllerModel model) {
    final filtered =
        model.originalList.campaigns?.where((campaign) {
          final matchesStatus =
              model.selectedStatusFilter == null ||
              campaign.status?.toLowerCase() == model.selectedStatusFilter!.name.toLowerCase();

          final matchesObjective =
              model.selectedObjectiveFilter == null ||
              campaign.objective?.toLowerCase() ==
                  model.selectedObjectiveFilter!.name.toLowerCase();

          final matchesSearch =
              model.searchText == null ||
              model.searchText!.isEmpty ||
              (campaign.name ?? "").toLowerCase().contains(model.searchText!.toLowerCase());

          return matchesStatus && matchesObjective && matchesSearch;
        }).toList() ??
        [];

    state = AsyncValue.data(
      model.copyWith(
        filteredList: CampaignsListModel(campaigns: filtered, total: filtered.length),
      ),
    );
  }
}
