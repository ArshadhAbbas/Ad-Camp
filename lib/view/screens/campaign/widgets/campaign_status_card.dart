import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class CampaignStatusCard extends StatelessWidget {
  const CampaignStatusCard({super.key, required this.status});
  final CampaignStatusEnum status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color:getStatusColor().withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(shape: BoxShape.circle, color:getStatusColor()),
          ),
          SizedBox(width: 4),
          Text(
            getStatusText(),
            style: TextStyleConstants.f10w400.copyWith(color:getStatusColor()),
          ),
        ],
      ),
    );
  }

  Color getStatusColor() {
    switch (status) {
      case CampaignStatusEnum.active:
        return ColorConstants.jadeGreen;
      case CampaignStatusEnum.paused:
        return ColorConstants.schoolBusYellow;
      case CampaignStatusEnum.ended:
        return Colors.red;
    }
  }
  String getStatusText() {
    switch (status) {
      case CampaignStatusEnum.active:
        return "Active";
      case CampaignStatusEnum.paused:
        return "Paused";
      case CampaignStatusEnum.ended:
        return "Ended";
    }
  }
}
