import 'package:ad_camp/controller/campaign_details_controller/campaign_details_controller.dart';
import 'package:ad_camp/core/constants/enums/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/utils/campaign_status_helper.dart';
import 'package:ad_camp/utils/num_extensions.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/budget_recommendation_card.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/campaign_details_appbar.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/campaign_details_metric_card.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/ctr_forcast_card.dart';
import 'package:ad_camp/view/widgets/details_error_screen.dart';
import 'package:ad_camp/view/widgets/details_loading_screen.dart';
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
  final String campaignId;
  final String? title, campaignObjective;
  final CampaignStatusEnum? campaignStatus;

  static const String pathName = "campaign_details";
  static const String path = "/campaign_details";
  static const String campaignIdParam = "campaign_id";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignDetailsModel = ref.watch(campaignDetailsControllerProvider(campid: campaignId));
    return Scaffold(
      appBar: CampaignDetailsAppBar(
        title:
            title ??
            (campaignDetailsModel.hasValue
                ? campaignDetailsModel.value?.campaignDetails.campaign?.name ?? ""
                : ""),
        campaignObjective:
            campaignObjective ??
            (campaignDetailsModel.hasValue
                ? campaignDetailsModel.value?.campaignDetails.campaign?.objective ?? ""
                : null),
        campaignStatus:
            campaignStatus ??
            (campaignDetailsModel.hasValue
                ? CampaignStatusHelper.getStatusEnum(
                    campaignDetailsModel.value?.campaignDetails.campaign?.status ?? "",
                  )
                : null),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: campaignDetailsModel.when(
            data: (data) {
              final campaignDetails = data.campaignDetails;
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
                  if (campaignForecast.forecast != null) ...[
                    const SizedBox(height: 18),
                    CtrForecastCard(data: data),
                  ],
                  const SizedBox(height: 18),
                  BudgetRecommendationCard(
                    isUpwardTrend: campaignForecast.recommendation?.trend != "downward",
                    message: campaignForecast.recommendation?.message ?? "",
                  ),
                ],
              );
            },
            error: (error, stackTrace) => DetailsErrorScreen(campId: campaignId),
            loading: () => DetailsLoadingScreen(),
          ),
        ),
      ),
    );
  }
}
