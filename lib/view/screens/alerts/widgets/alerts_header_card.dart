import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/topaz_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlertsHeaderCard extends StatelessWidget {
  const AlertsHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopazCard(child: SvgPicture.asset(ImageConstants.tvIcon, height: 30)),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Text("Monitoring in real-time", style: TextStyleConstants.f12w600),
                SizedBox(height: 4),
                Text(
                  "Polling Dds API every 30 seconds",
                  style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(shape: BoxShape.circle, color: ColorConstants.jadeGreen),
          ),
          SizedBox(width: 4),
          Text("Live", style: TextStyleConstants.f12w400.copyWith(color: ColorConstants.jadeGreen)),
        ],
      ),
    );
  }
}
