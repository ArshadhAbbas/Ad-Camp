import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CampaignBottomInfoSection extends StatelessWidget {
  const CampaignBottomInfoSection({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });
  final String label;
  final String value;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 6),
        Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Text(label, style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.starDust)),
            Text(value, style: TextStyleConstants.f12w600),
          ],
        ),
      ],
    );
  }
}
