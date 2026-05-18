import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/string_helpers.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BudgetRecommendationCard extends StatelessWidget {
  const BudgetRecommendationCard({super.key, required this.isUpwardTrend, required this.message});
  final bool isUpwardTrend;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: (isUpwardTrend ? ColorConstants.jadeGreen : ColorConstants.fuzzyWuzzyBrown)
                  .withValues(alpha: 0.15),
            ),
            child: Icon(
              isUpwardTrend ? Icons.trending_up : Icons.trending_down,
              color: isUpwardTrend ? ColorConstants.jadeGreen : ColorConstants.fuzzyWuzzyBrown,
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Budget Recommendation",
                  style: TextStyleConstants.f10w600.copyWith(color: ColorConstants.jadeGreen),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      message.messageTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleConstants.f12w600,
                    ),
                    SvgPicture.asset(
                      ImageConstants.tradeUpAngled,
                      colorFilter: ColorFilter.mode(ColorConstants.jadeGreen, BlendMode.srcIn),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          message.messageSubtitle,
                          style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: ColorConstants.jadeGreen),
                        ),
                        child: Text(
                          "View Details",
                          style: TextStyleConstants.f10w400.copyWith(
                            color: ColorConstants.jadeGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
