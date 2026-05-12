import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/universal_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CampaignDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CampaignDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return UniversalAppbar(
      title: "Winter Sale Conversion",
      bottom: Padding(
        padding: const EdgeInsets.only(left: 70, bottom: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: ColorConstants.jadeGreen.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                spacing: 4,
                children: [
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: ColorConstants.jadeGreen,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    "Active",
                    style: TextStyleConstants.f12w400.copyWith(color: ColorConstants.jadeGreen),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: ColorConstants.topaz.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "Conversion",
                style: TextStyleConstants.f12w400.copyWith(color: ColorConstants.topaz),
              ),
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, size: 18),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12, top: 20),
          child: SvgPicture.asset(
            ImageConstants.calendar,
            width: 28,
            height: 28,
            colorFilter: ColorFilter.mode(ColorConstants.cloud, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight + 20);
}