import 'package:ad_camp/core/constants/enums/campaign_status_enum.dart';
import 'package:ad_camp/core/services/campaign_cache_service.dart';
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
CampaignCacheService cacheService(Ref ref) {
  return CampaignCacheService();
}

@riverpod
CampaignRepository campaignRepository(Ref ref) {
  return CampaignRepositoryImpl(
    campaignDataSource: ref.watch(campaignDataSourceProvider),
    cacheService: ref.watch(cacheServiceProvider),
  );
}

class CampaignDataControllerModel {
  final CampaignsListModel originalList;

  final CampaignsListModel filteredList;

  final CampaignStatusEnum? selectedStatusFilter;

  final CampaignObjectiveEnum? selectedObjectiveFilter;

  final String? searchText;

  final bool isRefreshing;

  CampaignDataControllerModel({
    required this.originalList,
    required this.filteredList,
    this.selectedStatusFilter,
    this.selectedObjectiveFilter,
    this.searchText,
    this.isRefreshing = false,
  });

  CampaignDataControllerModel copyWith({
    CampaignsListModel? originalList,
    CampaignsListModel? filteredList,
    Object? selectedStatusFilter = _empty,
    Object? selectedObjectiveFilter = _empty,
    Object? searchText = _empty,
    bool? isRefreshing,
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

      isRefreshing: isRefreshing ?? this.isRefreshing,
    );
  }
}

const _empty = Object();

@Riverpod(keepAlive: true)
class CampaignDataSourceController extends _$CampaignDataSourceController {
  @override
  Future<CampaignDataControllerModel> build() async {
    final repository = ref.watch(campaignRepositoryProvider);

    final cached = repository.getCachedCampaigns();

    if (cached != null) {
      Future.microtask(() async {
        try {
          state = AsyncValue.data(
            CampaignDataControllerModel(
              originalList: cached,
              filteredList: cached,
              isRefreshing: true,
            ),
          );
          final fresh = await repository.fetchCampaigns();
          state = AsyncValue.data(
            CampaignDataControllerModel(
              originalList: fresh,
              filteredList: fresh,
              isRefreshing: false,
            ),
          );
        } catch (_) {
          state = AsyncValue.data(
            CampaignDataControllerModel(
              originalList: cached,
              filteredList: cached,
              isRefreshing: false,
            ),
          );
        }
      });

      return CampaignDataControllerModel(
        originalList: cached,
        filteredList: cached,
        isRefreshing: true,
      );
    }


    final fresh = await repository.fetchCampaigns();

    return CampaignDataControllerModel(
      originalList: fresh,
      filteredList: fresh,
      isRefreshing: false,
    );
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
