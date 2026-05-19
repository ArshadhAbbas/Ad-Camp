import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/enums/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_status_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CampaignDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CampaignDetailsAppBar({
    super.key,
    required this.title,
    required this.campaignObjective,
    required this.campaignStatus,
  });
  final String? title, campaignObjective;
  final CampaignStatusEnum? campaignStatus;
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
          Hero(
            tag: title ?? "",
            child: Material(
              color: ColorConstants.darkJungleGreen,
              child: Text(title ?? "", style: TextStyleConstants.f16w600),
            ),
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              if (campaignStatus != null) CampaignStatusCard(status: campaignStatus!),

              const SizedBox(width: 8),

              if (campaignObjective != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: ColorConstants.topaz.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    campaignObjective!,
                    style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.topaz),
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
