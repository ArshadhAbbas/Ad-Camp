import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_status_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CampaignCardHeader extends StatelessWidget {
  const CampaignCardHeader({super.key, required this.status});
  final CampaignStatusEnum status;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .start,
      crossAxisAlignment: .center,
      children: [
        CachedNetworkImage(
          imageUrl: ImageConstants.sampleImage,
          height: 41,
          width: 41,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 4),
        SizedBox(
          height: 41,
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [
              Expanded(
                child: Text(
                  "Winter Sale Conversion",
                  style: TextStyleConstants.f12w600,
                  maxLines: 2,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: ColorConstants.topaz.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Conversion",
                  style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.topaz),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CampaignStatusCard(status: status),
        SizedBox(width: 3),
        Icon(Icons.more_horiz, size: 16, color: ColorConstants.whiteSmoke.withValues(alpha: 0.7)),
      ],
    );
  }
}
