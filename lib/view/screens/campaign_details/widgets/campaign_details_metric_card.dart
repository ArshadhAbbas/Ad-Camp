
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CampaignDetailsMetricCard extends StatelessWidget {
  const CampaignDetailsMetricCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  final String icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 18,
            colorFilter: ColorFilter.mode(ColorConstants.topaz, BlendMode.srcIn),
          ),
          const SizedBox(height: 10),
          Text(value, style: TextStyleConstants.f12w600, textAlign: TextAlign.center),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}