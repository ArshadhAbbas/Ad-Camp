
  import 'package:ad_camp/core/constants/color_constants.dart';
  import 'package:ad_camp/core/constants/text_style_constants.dart';
  import 'package:ad_camp/view/widgets/app_card.dart';
  import 'package:ad_camp/view/widgets/topaz_card.dart';
  import 'package:flutter/material.dart';

  class Top3CampaignCTRCard extends StatelessWidget {
    const Top3CampaignCTRCard({
      super.key,
    });

    @override
    Widget build(BuildContext context) {
      return AppCard(
        margin: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Text("Top 3 Campaigns by CTR", style: TextStyleConstants.f14w600),
            SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                child: Row(
                  children: [
                    TopazCard(
                      child: Text(
                        "$index",
                        style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.topaz),
                      ),
                    ),
                    SizedBox(width: 10),
                    TopazCard(child: Icon(Icons.campaign, color: ColorConstants.topaz, size: 20)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "Qui quis labore exercitation ullamco enim commodo consectetur ipsum labore et elit Lorem.",
                        style: TextStyleConstants.f12w400.copyWith(
                          color: ColorConstants.whiteSmoke,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${((index + 1) * 3.21).toStringAsFixed(2)}%",
                      style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.jadeGreen),
                    ),
                    SizedBox(width: 3),
                    Icon(Icons.arrow_upward, size: 12, color: ColorConstants.jadeGreen),
                  ],
                ),
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(height: 8, child: Center(child: Divider())),
            ),
          ],
        ),
      );
    }
  }
