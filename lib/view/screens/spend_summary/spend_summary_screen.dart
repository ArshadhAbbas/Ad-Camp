import 'package:ad_camp/controller/spend_summary_controller/spend_summary_controller.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/spend_by_channel_card.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/spend_summary_range_picker.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/top3_campaign_ctr_card.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/total_spend_card.dart';
import 'package:ad_camp/view/widgets/app_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpendSummaryScreen extends ConsumerWidget {
  const SpendSummaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spendSummary = ref.watch(spendSummaryControllerProvider);
    return spendSummary.when(
      data: (data) => data.summaryModel?.summary != null
          ? Column(
              children: [
                if (data.summaryModel?.summary!.totalSpend != null)
                  TotalSpendCard(totalSpend: data.summaryModel!.summary!.totalSpend!),
                //
                if (data.summaryModel?.summary!.byChannel != null &&
                    data.summaryModel!.summary!.byChannel!.isNotEmpty)
                  SpendByChannelCard(
                    chartData: data.chartData,
                    totalSpend: data.summaryModel!.summary!.totalSpend?.toDouble(),
                  ),
                //
                if (data.topCampaigns != null && data.topCampaigns!.isNotEmpty) ...[
                  SizedBox(height: 13),
                  Top3CampaignCTRCard(
                    topCampaigns: [...data.topCampaigns!]
                      ..sort((a, b) => (b.ctr ?? 0).compareTo(a.ctr ?? 0)),
                    totalCTR: data.totalCTR,
                    images: data.images,
                  ),
                ],
                SizedBox(height: 13),
                SpendSummaryDateRangePicker(),
              ],
            )
          : Center(child: Text('No spend summary data available.')),
      loading: () => Center(child: AppLoader(size: 50)),
      error: (error, stackTrace) => Center(child: Text('Error loading spend summary: $error')),
    );
  }
}
