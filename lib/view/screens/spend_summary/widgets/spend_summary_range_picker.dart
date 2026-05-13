import 'package:ad_camp/controller/spend_summary_date_range_controller/spend_summary_date_range_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/spend_summary_helper.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpendSummaryDateRangePicker extends ConsumerWidget {
  const SpendSummaryDateRangePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(spendSummaryDateRangeControllerProvider);

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
            children: List.generate(SpendSummaryHelper.spendSummaryRange.length, (index) {
              final bool isSelected =
                  selectedIndex == SpendSummaryHelper.spendSummaryRange.values.elementAt(index);

              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: index == SpendSummaryHelper.spendSummaryRange.length - 1 ? 0 : 10,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(4),
                    onTap: () {
                      final selectedRange = SpendSummaryHelper.spendSummaryRange.values.elementAt(
                        index,
                      );
                      ref
                          .read(spendSummaryDateRangeControllerProvider.notifier)
                          .changeDateRange(selectedRange);
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
                          SpendSummaryHelper.getSpendSummaryRangeText(
                            SpendSummaryHelper.spendSummaryRange.values.elementAt(index),
                          ),
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
