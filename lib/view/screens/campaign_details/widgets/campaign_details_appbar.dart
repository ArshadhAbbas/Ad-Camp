import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CampaignDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CampaignDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.darkJungleGreen,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      toolbarHeight: 72,

      leadingWidth: 56,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        splashRadius: 22,
        icon: const Icon(Icons.arrow_back, size: 22),
      ),

      titleSpacing: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Winter Sale Conversion", style: TextStyleConstants.f16w600),

          const SizedBox(height: 8),

          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: ColorConstants.jadeGreen.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                        color: ColorConstants.jadeGreen,
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 4),

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
        ],
      ),

      actions: [
        IconButton(
          onPressed: () {},
          splashRadius: 22,
          icon: SvgPicture.asset(
            ImageConstants.calendar,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(ColorConstants.cloud, BlendMode.srcIn),
          ),
        ),

        const SizedBox(width: 8),
      ],

      /// BOTTOM BORDER
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(2),
        child: Container(height: 2, color: ColorConstants.balticSea),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
