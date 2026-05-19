import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/models/spend_summary_model/spend_summary_model.dart';
import 'package:ad_camp/view/screens/campaign_details/campaign_details_screen.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/topaz_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Top3CampaignCTRCard extends StatelessWidget {
  const Top3CampaignCTRCard({super.key, this.topCampaigns, this.totalCTR, required this.images});
  final List<TopCampaign>? topCampaigns;
  final List<String> images;
  final double? totalCTR;

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
            itemCount: topCampaigns?.length ?? 0,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
              child: InkWell(
                onTap: () => topCampaigns != null
                    ? context.pushNamed(
                        CampaignDetailsScreen.pathName,
                        queryParameters: {
                          CampaignDetailsScreen.campaignIdParam: topCampaigns![index].id,
                        },
                        extra: {
                          "title": topCampaigns![index].name ?? "",
                          "campaignStatus": null,
                          "campaignObjective": null,
                        },
                      )
                    : null,
                child: Row(
                  children: [
                    TopazCard(
                      child: Text(
                        "${index + 1}",
                        style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.topaz),
                      ),
                    ),
                    SizedBox(width: 10),
                    TopazCard(child: SvgPicture.asset(images[index], height: 24)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Hero(
                        tag: topCampaigns![index].name ?? "",
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            topCampaigns?[index].name ?? "",
                            style: TextStyleConstants.f12w400.copyWith(
                              color: ColorConstants.whiteSmoke,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${(((topCampaigns?[index].ctr ?? 0) / (totalCTR ?? 1)) * 100).toStringAsFixed(1)}%",
                      style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.jadeGreen),
                    ),
                    SizedBox(width: 3),
                    SvgPicture.asset(
                      ImageConstants.tradeUpAngled,
                      height: 12,
                      colorFilter: ColorFilter.mode(ColorConstants.jadeGreen, BlendMode.srcIn),
                    ),
                  ],
                ),
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
