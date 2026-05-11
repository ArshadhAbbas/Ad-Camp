import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class CampaignSpendSection extends StatelessWidget {
  const CampaignSpendSection({super.key});

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
            Text(
              "7800 SAR",
              style: TextStyleConstants.f12w600.copyWith(color: ColorConstants.whiteSmoke),
            ),
            Text(
              "/10,000 SAR",
              style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
            ),
          ],
        ),
        SizedBox(height: 8),
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
                          width: constraints.maxWidth * 0.78,
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
            Text("55%", style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust)),
          ],
        ),
      ],
    );
  }
}
