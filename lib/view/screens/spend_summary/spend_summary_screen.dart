import 'package:ad_camp/controller/spend_summary_date_range_controller/spend_summary_date_range_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/spend_by_channel_card.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/top3_campaign_ctr_card.dart';
import 'package:ad_camp/view/screens/spend_summary/widgets/total_spend_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpendSummaryScreen extends StatelessWidget {
  const SpendSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TotalSpendCard(),
        SpendByChannelCard(),
        SizedBox(height: 13),
        Top3CampaignCTRCard(),
        SizedBox(height: 13),
        SpendSummaryDateRangePicker(),
      ],
    );
  }
}

class SpendSummaryDateRangePicker extends ConsumerWidget {
  const SpendSummaryDateRangePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(spendSummaryDateRangeControllerProvider);

    final Map<String, SpendSummaryDateRangeEnum> dateRanges = {
      "Last 7 days": SpendSummaryDateRangeEnum.last7Days,
      "Last 14 days": SpendSummaryDateRangeEnum.last14Days,
      "Last 30 days": SpendSummaryDateRangeEnum.last30Days,
    };

    return AppCard(
      margin: EdgeInsetsGeometry.symmetric(horizontal: 20),

      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Text("Date Range", style: TextStyleConstants.f14w600),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: List.generate(dateRanges.length, (index) {
              final bool isSelected = selectedIndex == dateRanges.values.elementAt(index);

              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: index == dateRanges.length - 1 ? 0 : 10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(4),
                    onTap: () {
                      ref
                          .read(spendSummaryDateRangeControllerProvider.notifier)
                          .changeDateRange(dateRanges.values.elementAt(index));
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected ? ColorConstants.topaz : ColorConstants.cloud,
                        ),
                        borderRadius: BorderRadius.circular(4),
                        color: ColorConstants.balticSea,
                      ),
                      child: Center(
                        child: Text(
                          dateRanges.keys.elementAt(index),
                          style: TextStyleConstants.f10w400.copyWith(
                            color: isSelected ? ColorConstants.topaz : ColorConstants.cloud,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
