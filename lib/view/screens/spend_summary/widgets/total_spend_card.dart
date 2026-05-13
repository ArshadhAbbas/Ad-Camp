import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/num_extensions.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TotalSpendCard extends StatelessWidget {
  const TotalSpendCard({super.key, required this.totalSpend});
  final int totalSpend;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Column(
        children: [
          AppCard(
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: .start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: ColorConstants.jadeGreen.withValues(alpha: 0.4),
                  ),
                  child: SvgPicture.asset(ImageConstants.tradeUp),
                ),
                Column(
                  children: [
                    Text(
                      "Total Spend",
                      style: TextStyle(fontSize: 10, color: ColorConstants.cloud),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: .end,
                      crossAxisAlignment: .center,
                      spacing: 4,
                      children: [
                        Text(totalSpend.formatCompactNumber(), style: TextStyleConstants.f14w600),
                        Text(
                          "SAR",
                          style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
