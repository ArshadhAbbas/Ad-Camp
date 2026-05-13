import 'package:ad_camp/controller/spend_summary_date_range_controller/spend_summary_date_range_controller.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/data_source/spend_summary_data_source.dart';
import 'package:ad_camp/models/chart_data/chart_data.dart';
import 'package:ad_camp/models/spend_summary_model/spend_summary_model.dart';
import 'package:ad_camp/repository/spend_summary_repository/spend_summary_repository.dart';
import 'package:ad_camp/repository/spend_summary_repository/spend_summary_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../utils/colors_helper.dart';

part 'spend_summary_controller.g.dart';

@riverpod
SpendSummaryDataSource spendSummaryDataSource(Ref ref) {
  return SpendSummaryDataSource();
}

@riverpod
SpendSummaryRepository spendSummaryRepository(Ref ref) {
  return SpendSummaryRepositoryImpl(
    spendSummaryDataSource: ref.watch(spendSummaryDataSourceProvider),
  );
}

class SpendSummaryControllerModel {
  final SpendSummaryModel? summaryModel;
  final List<ChartData>? chartData;
  final List<TopCampaign>? topCampaigns;
  final double? totalCTR;
  final List<String> images;
  SpendSummaryControllerModel({
    this.summaryModel,
    this.chartData,
    this.topCampaigns,
    this.totalCTR,
    this.images = const [
      ImageConstants.megaphone,
      ImageConstants.gift,
      ImageConstants.shoppingCart
    ],
  });
}

@Riverpod(keepAlive: true)
class SpendSummaryController extends _$SpendSummaryController {
  @override
  Future<SpendSummaryControllerModel> build() async {
    final repository = ref.watch(spendSummaryRepositoryProvider);
    var selectedRange = ref.watch(spendSummaryDateRangeControllerProvider);
    var spendSummaryModel = await repository.fetchSpendSummary(selectedRange);
    return SpendSummaryControllerModel(
      summaryModel: spendSummaryModel,
      chartData: getChartData(
        spendSummaryModel.summary?.byChannel,
        spendSummaryModel.summary?.totalSpend?.toDouble(),
      ),
      topCampaigns: spendSummaryModel.summary?.topCampaigns,
      totalCTR: spendSummaryModel.summary?.topCampaigns
          ?.map((e) => e.ctr?.toDouble() ?? 0)
          .reduce((a, b) => a + b),
    );
  }

  List<ChartData> getChartData(List<ByChannel>? byChannel, double? totalSpend) {
    final List<ChartData> chartData = List.generate(
      byChannel?.length ?? 0,
      (index) => ChartData(
        byChannel![index].channel ?? "",
        (byChannel[index].spend?.toDouble() ?? 0) / (totalSpend ?? 1) * 100,
        ColorsHelper.colorConstants[index % ColorsHelper.colorConstants.length],
      ),
    );
    return chartData;
  }
}
