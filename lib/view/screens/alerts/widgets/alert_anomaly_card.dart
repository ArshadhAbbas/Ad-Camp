
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_metric_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlertAnomalyCard extends StatelessWidget {
  const AlertAnomalyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: ColorConstants.fuzzyWuzzyBrown.withValues(alpha: 0.2),
                ),
                child: SvgPicture.asset(
                  ImageConstants.tradeUp,
                  height: 40,
                  colorFilter: ColorFilter.mode(
                    ColorConstants.fuzzyWuzzyBrown,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              SizedBox(width: 4),
              Expanded(
                child: Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: ColorConstants.fuzzyWuzzyBrown.withValues(alpha: 0.2),
                      ),
                      child: Text(
                        "Spend Spike",
                        style: TextStyleConstants.f10w400.copyWith(
                          color: ColorConstants.fuzzyWuzzyBrown,
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Summer Collection Awareness",
                      style: TextStyleConstants.f12w600.copyWith(
                        color: ColorConstants.whiteSmoke,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Campaign ",
                      style: TextStyleConstants.f10w400.copyWith(
                        color: ColorConstants.starDust,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "2m ago",
                style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            "Spend is 72% higher than usual",
            style: TextStyleConstants.f12w600.copyWith(color: ColorConstants.whiteSmoke),
          ),
          SizedBox(height: 11),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: CampaignMetricCard(
                  icon: ImageConstants.tradeUp,
                  value: "5600 SAR",
                  label: "Spend",
                  iconColor: ColorConstants.fuzzyWuzzyBrown,
                ),
              ),
              Expanded(
                child: CampaignMetricCard(
                  icon: ImageConstants.chartIncrease,
                  value: "3,250 SAR",
                  label: "Expected",
                ),
              ),
              Expanded(
                child: CampaignMetricCard(
                  icon: ImageConstants.tradeDownAngled,
                  value: "+72%",
                  label: "Change",
                  suffix: Icon(Icons.info_outline, size: 10, color: ColorConstants.starDust),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
