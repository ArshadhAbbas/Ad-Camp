import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsNoDataScreen extends StatelessWidget {
  const DetailsNoDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withValues(alpha: 0.06),
            ),
            child: SvgPicture.asset(ImageConstants.noData, height: 50),
          ),
          const SizedBox(height: 18),
          Text("No data available", style: TextStyleConstants.f14w600, textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Text(
            "There is no data to display for this period.",
            style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
