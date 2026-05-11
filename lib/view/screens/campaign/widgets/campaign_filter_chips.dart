
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class CampaignFilterChips extends StatelessWidget {
  const CampaignFilterChips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
          decoration: BoxDecoration(
            color: ColorConstants.balticSea,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'All',
            style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.balticSea),
            color: ColorConstants.darkJungleGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'Active',
            style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
          ),
        ),
      ],
    );
  }
}
