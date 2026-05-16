import 'package:ad_camp/controller/anomaly_controller/anomaly_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/anomaly_helper.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_metric_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlertAnomalyCard extends StatelessWidget {
  const AlertAnomalyCard({super.key, required this.anomalyModel});
  final AnomalyControllerModel anomalyModel;

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
                  color: anomalyModel.anomalyColor.withValues(alpha: 0.2),
                ),
                child: SvgPicture.asset(
                  anomalyModel.anomalyThumbNail!,
                  height: 40,
                  colorFilter: ColorFilter.mode(anomalyModel.anomalyColor, BlendMode.srcIn),
                ),
              ),
              SizedBox(width: 4),
              Expanded(
                child: Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .start,
                  children: [
                    if (anomalyModel.anomalyType != null)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: anomalyModel.anomalyColor.withValues(alpha: 0.2),
                        ),
                        child: Text(
                          AnomalyHelper.getAnomalyTypeText(anomalyModel.anomalyType!),
                          style: TextStyleConstants.f10w400.copyWith(
                            color: anomalyModel.anomalyColor,
                          ),
                        ),
                      ),
                    SizedBox(height: 2),
                    Text(
                      anomalyModel.campaignName ?? "",
                      style: TextStyleConstants.f12w600.copyWith(color: ColorConstants.whiteSmoke),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Campaign ",
                      style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
                    ),
                  ],
                ),
              ),
              Text(
                anomalyModel.anomalyDetectedTime ?? "",
                style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            anomalyModel.message ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyleConstants.f12w600.copyWith(color: ColorConstants.whiteSmoke),
          ),
          SizedBox(height: 11),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: CampaignMetricCard(
                  icon: ImageConstants.tradeUp,
                  value: "${anomalyModel.spend} SAR",
                  label: "Spend",
                  iconColor: anomalyModel.anomalyColor,
                ),
              ),
              Expanded(
                child: CampaignMetricCard(
                  icon: ImageConstants.chartIncrease,
                  value: "${anomalyModel.expected} SAR",
                  label: "Expected",
                ),
              ),
              Expanded(
                child: CampaignMetricCard(
                  icon: anomalyModel.change!.isNegative
                      ? ImageConstants.tradeDownAngled
                      : ImageConstants.tradeUpAngled,
                  value: "${anomalyModel.change}%",
                  label: "Change",
                  suffix: SizedBox.shrink(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
