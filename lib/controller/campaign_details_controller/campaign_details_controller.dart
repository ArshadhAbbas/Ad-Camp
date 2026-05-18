import 'package:ad_camp/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart';
import 'package:ad_camp/models/campaign_details_model/campaign_details_model.dart';
import 'package:ad_camp/models/campaign_history_model/campaign_history_model.dart';
import 'package:ad_camp/models/forecast_model/forecast_model.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign_details_controller.g.dart';

class ForecastChartPoint {
  final double x;
  final double y;

  ForecastChartPoint({required this.x, required this.y});
}

class ForecastRangePoint {
  final double x;
  final double high;
  final double low;

  ForecastRangePoint({required this.x, required this.high, required this.low});
}

class CampaignDetailsControllerModel {
  final CampaignDetailsModel campaignDetails;
  final CampaignHistoryModel campaignHistory;
  final ForecastModel forecast;

  final List<ForecastChartPoint> historicalChart;

  final List<ForecastChartPoint> forecastChart;

  final List<ForecastRangePoint> forecastRange;

  final Map<int, String> labels;

  CampaignDetailsControllerModel({
    required this.campaignDetails,
    required this.campaignHistory,
    required this.forecast,
    required this.historicalChart,
    required this.forecastChart,
    required this.forecastRange,
    required this.labels,
  });
}

@riverpod
class CampaignDetailsController extends _$CampaignDetailsController {
  @override
  Future<CampaignDetailsControllerModel> build({required String campid}) async {
    final repository = ref.watch(campaignRepositoryProvider);

    final detailsFuture = repository.fetchCampaignDetails(campaignId: campid);

    final historyFuture = repository.fetchCampaignHistory(campaignId: campid);

    final campaignDetails = await detailsFuture;

    final campaignHistory = await historyFuture;

    final forecast = await repository.fetchCampaignForecast(history: campaignHistory);


    const double historicalWidth = 50;
    const double forecastWidth = 50;

    final historicalSpacing = historicalWidth / (campaignHistory.history!.length - 1);
    final forecastSpacing = forecastWidth / (forecast.forecast!.length - 1);

    final historicalChart = campaignHistory.history!.asMap().entries.map((e) {
      final x = e.key * historicalSpacing;
      return ForecastChartPoint(x: x, y: e.value.ctr! * 100);
    }).toList();

    final forecastChart = forecast.forecast!.asMap().entries.map((e) {
      final x = historicalWidth + (e.key * forecastSpacing);
      return ForecastChartPoint(x: x, y: e.value.predictedCtr! * 100);
    }).toList();

    final forecastRange = forecast.forecast!.asMap().entries.map((e) {
      final x = historicalWidth + (e.key * forecastSpacing);

      return ForecastRangePoint(
        x: x,
        high: e.value.upperBound! * 100,
        low: e.value.lowerBound! * 100,
      );
    }).toList();

    final Map<int, String> labels = {};
    for (int i = 0; i < campaignHistory.history!.length; i += 6) {
      final x = (i * historicalSpacing).round();
      labels[x] = DateFormat("dd MMM").format(campaignHistory.history![i].date!);
    }
    for (int i = 0; i < forecast.forecast!.length; i += 2) {
      final x = (historicalWidth + (i * forecastSpacing)).round();
      labels[x] = DateFormat("dd MMM").format(forecast.forecast![i].date!);
    }
    return CampaignDetailsControllerModel(
      campaignDetails: campaignDetails,
      campaignHistory: campaignHistory,
      forecast: forecast,
      historicalChart: historicalChart,
      forecastChart: forecastChart,
      forecastRange: forecastRange,
      labels: labels,
    );
  }
}
