import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CampaignMetricCard extends StatelessWidget {
  const CampaignMetricCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.suffix,
    this.iconColor,
  });
  final String icon;
  final String value;
  final String label;
  final Widget? suffix;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.balticSea),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: iconColor != null ? ColorFilter.mode(iconColor!, BlendMode.srcIn) : null,
          ),
          SizedBox(height: 4),
          Text(value, style: TextStyleConstants.f12w600),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                label,
                style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust),
              ),
              if (suffix != null) ...[SizedBox(width: 4), suffix!],
            ],
          ),
        ],
      ),
    );
  }
}
