import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class CampaignSpendSection extends StatelessWidget {
  const CampaignSpendSection({
    super.key,
    required this.budget,
    required this.spend,
    required this.budgetUtilization,
    required this.currency,
  });
  final double? budgetUtilization;
  final int? budget, spend;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,

      children: [
        Text(
          "Total Spend",
          style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
        ),
        Row(
          crossAxisAlignment: .end,
          children: [
            if (spend != null)
              Text(
                "$spend $currency",
                style: TextStyleConstants.f12w600.copyWith(color: ColorConstants.whiteSmoke),
              ),
            if (budget != null)
              Text(
                "/$budget $currency",
                style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
              ),
          ],
        ),
        SizedBox(height: 8),
        if (budgetUtilization != null)
          Row(
            spacing: 6,
            children: [
              Expanded(
                child: SizedBox(
                  height: 6,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: [
                          Container(
                            width: constraints.maxWidth,
                            decoration: BoxDecoration(
                              color: ColorConstants.charcoalGrey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Container(
                            width: constraints.maxWidth * budgetUtilization! / 100,
                            decoration: BoxDecoration(
                              color: ColorConstants.topaz,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Text(
                "${budgetUtilization!}%",
                style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
              ),
            ],
          ),
      ],
    );
  }
}
