import 'package:ad_camp/controller/campaign_details_controller/campaign_details_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/enums/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/num_extensions.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/budget_recommendation_card.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/campaign_details_appbar.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/campaign_details_metric_card.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/ctr_forcast_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/app_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampaignDetailsScreen extends ConsumerWidget {
  const CampaignDetailsScreen({
    super.key,
    required this.campaignId,
    required this.title,
    required this.campaignStatus,
    required this.campaignObjective,
  });
  final String campaignId, title, campaignObjective;
  final CampaignStatusEnum campaignStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignDetailsModel = ref.watch(campaignDetailsControllerProvider(campid: campaignId));
    return Scaffold(
      appBar: CampaignDetailsAppBar(
        title: title,
        campaignObjective: campaignObjective,
        campaignStatus: campaignStatus,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: campaignDetailsModel.when(
            data: (data) {
              final campaignDetails = data.campaignDetails;
              final campaignHistory = data.campaignHistory;
              final campaignForecast = data.forecast;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      if (campaignDetails.campaign?.impressions != null)
                        Expanded(
                          child: CampaignDetailsMetricCard(
                            icon: ImageConstants.view,
                            value: campaignDetails.campaign!.impressions!.toKMB(),
                            label: "Impressions",
                          ),
                        ),
                      if (campaignDetails.campaign?.clicks != null)
                        Expanded(
                          child: CampaignDetailsMetricCard(
                            icon: ImageConstants.cursor,
                            value: campaignDetails.campaign!.clicks!.toKMB(),
                            label: "Clicks",
                          ),
                        ),
                      if (campaignDetails.campaign?.ctr != null)
                        Expanded(
                          child: CampaignDetailsMetricCard(
                            icon: ImageConstants.tradeUp,
                            value: "${campaignDetails.campaign?.ctr}%",
                            label: "CTR",
                          ),
                        ),
                      if (campaignDetails.campaign?.spend != null)
                        Expanded(
                          child: CampaignDetailsMetricCard(
                            icon: ImageConstants.wallet,
                            value:
                                "${campaignDetails.campaign!.spend!.formatCompactNumber()} ${campaignDetails.campaign!.currency}",
                            label: "Total spend",
                          ),
                        ),
                    ],
                  ),
                  if (data.forecast.forecast != null) ...[
                    const SizedBox(height: 18),
                    CtrForecastCard(data: data),
                  ],
                  const SizedBox(height: 18),
                  BudgetRecommendationCard(
                    isUpwardTrend: data.forecast.recommendation?.trend != "downward",
                    message: data.forecast.recommendation?.message ?? "",
                  ),

                  const SizedBox(height: 22),

                  Text("States", style: TextStyleConstants.f16w600),

                  const SizedBox(height: 16),

                  Row(
                    children: const [
                      Expanded(child: _LoadingStateCard()),
                      SizedBox(width: 12),
                      Expanded(child: _NoDataStateCard()),
                      SizedBox(width: 12),
                      Expanded(child: _ErrorStateCard()),
                    ],
                  ),
                ],
              );
            },
            error: (error, stackTrace) => Center(child: Text(error.toString())),
            loading: () => Center(child: AppLoader(size: 30)),
          ),
        ),
      ),
    );
  }
}

class _LoadingStateCard extends StatelessWidget {
  const _LoadingStateCard();

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Loading", style: TextStyleConstants.f16w600),
          const SizedBox(height: 20),
          Container(
            height: 10,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 10,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 28),
          Center(child: AppLoader(size: 50)),
        ],
      ),
    );
  }
}

class _NoDataStateCard extends StatelessWidget {
  const _NoDataStateCard();

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withValues(alpha: 0.06),
            ),
            child: const Icon(Icons.inventory_2_outlined, color: Colors.white54, size: 30),
          ),
          const SizedBox(height: 18),
          Text("No data available", style: TextStyleConstants.f14w600, textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Text(
            "There is no data to display for this period.",
            style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ErrorStateCard extends StatelessWidget {
  const _ErrorStateCard();

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.withValues(alpha: 0.12),
            ),
            child: const Icon(Icons.error_outline, color: Colors.red, size: 30),
          ),
          const SizedBox(height: 18),
          Text(
            "Failed to load data",
            style: TextStyleConstants.f14w600,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            "Something went wrong",
            style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text("Retry", style: TextStyleConstants.f14w600.copyWith(color: ColorConstants.topaz)),
        ],
      ),
    );
  }
}
