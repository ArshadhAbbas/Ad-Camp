
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CampaignSearchField extends StatelessWidget {
  const CampaignSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Campaigns...',
        prefixIcon: Icon(Icons.search, color: ColorConstants.whiteSmoke),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 16),
          child: SvgPicture.asset(ImageConstants.filterIcon),
        ),
      ),
    );
  }
}
