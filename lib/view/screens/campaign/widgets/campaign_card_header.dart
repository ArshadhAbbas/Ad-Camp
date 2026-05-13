import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_status_card.dart';
import 'package:ad_camp/view/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class CampaignCardHeader extends StatelessWidget {
  const CampaignCardHeader({
    super.key,
    this.status,
    this.campaignName,
    this.objective,
    this.thumbNailUrl,
  });
  final CampaignStatusEnum? status;
  final String? campaignName, objective, thumbNailUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .start,
      crossAxisAlignment: .center,
      children: [
        ImageWidget(imageUrl: thumbNailUrl, height: 41, width: 41),
        SizedBox(width: 4),
        SizedBox(
          height: 41,
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [
              Expanded(
                child: Text(campaignName ?? "", style: TextStyleConstants.f12w600, maxLines: 2),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: ColorConstants.topaz.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  objective ?? "",
                  style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.topaz),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        status != null ? CampaignStatusCard(status: status!) : SizedBox(),
        SizedBox(width: 3),
        Icon(Icons.more_horiz, size: 16, color: ColorConstants.whiteSmoke.withValues(alpha: 0.7)),
      ],
    );
  }
}
