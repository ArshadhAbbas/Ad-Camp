import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/budget_recommendation_card.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/campaign_details_appbar.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/campaign_details_metric_card.dart';
import 'package:ad_camp/view/screens/campaign_details/widgets/ctr_forcast_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/app_loader.dart';
import 'package:flutter/material.dart';

class CampaignDetailsScreen extends StatelessWidget {
  const CampaignDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CampaignDetailsAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                children: const [
                  Expanded(
                    child: CampaignDetailsMetricCard(
                      icon: ImageConstants.view,
                      value: "150K",
                      label: "Impressions",
                    ),
                  ),
                  Expanded(
                    child: CampaignDetailsMetricCard(
                      icon: ImageConstants.cursor,
                      value: "6.2K",
                      label: "Clicks",
                    ),
                  ),
                  Expanded(
                    child: CampaignDetailsMetricCard(
                      icon: ImageConstants.tradeUp,
                      value: "2.48%",
                      label: "CTR",
                    ),
                  ),
                  Expanded(
                    child: CampaignDetailsMetricCard(
                      icon: ImageConstants.wallet,
                      value: "7,800 SAR",
                      label: "Total spend",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const CtrForecastCard(),
              const SizedBox(height: 18),
              const BudgetRecommendationCard(),

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
          Center(child: AppLoader(size: 50,)),
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
