import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:ad_camp/utils/campaign_status_helper.dart';
import 'package:ad_camp/utils/num_extensions.dart';
import 'package:ad_camp/utils/string_helpers.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_bottom_info_section.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_card_header.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_metric_card.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_spend_section.dart';
import 'package:ad_camp/view/screens/campaign_details/campaign_details_screen.dart';
import 'package:flutter/material.dart';

class CampaignOverviewCard extends StatelessWidget {
  const CampaignOverviewCard({super.key, required this.campaign});
  final Campaign campaign;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CampaignDetailsScreen()));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: ColorConstants.darkJungleGreen,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorConstants.mirage),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            CampaignCardHeader(
              status: campaign.status != null
                  ? CampaignStatusHelper.getStatusEnum(campaign.status!)
                  : null,
              campaignName: campaign.name,
              objective: campaign.objective,
              thumbNailUrl: campaign.thumbnail,
            ),
            SizedBox(height: 13),
            CampaignSpendSection(
              budget: campaign.budget,
              spend: campaign.spend,
              budgetUtilization: campaign.budgetUtilization,
              currency: campaign.currency,
            ),
            SizedBox(height: 18),
            Row(
              spacing: 10,
              children: [
                if (campaign.impressions != null)
                  Expanded(
                    child: CampaignMetricCard(
                      icon: ImageConstants.view,
                      value: campaign.impressions!.toKMB(),
                      label: "Impressions",
                    ),
                  ),
                if (campaign.clicks != null)
                  Expanded(
                    child: CampaignMetricCard(
                      icon: ImageConstants.cursor,
                      value: campaign.clicks!.toKMB(),
                      label: "Clicks",
                    ),
                  ),
                if (campaign.ctr != null)
                  Expanded(
                    child: CampaignMetricCard(
                      icon: ImageConstants.tradeUp,
                      value: "${campaign.ctr!.toStringAsFixed(2)}%",
                      label: "CTR",
                      suffix: Icon(Icons.info_outline, size: 10, color: ColorConstants.starDust),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              spacing: 20,
              children: [
                CampaignBottomInfoSection(
                  icon: ImageConstants.calendar,
                  label: "Start Date",
                  value: StringHelpers.formatDate(campaign.startDate.toString()),
                ),
                // CampaignBottomInfoSection(
                //   icon: ImageConstants.target,
                //   label: "All Audience",
                //   value: "All Users, KSA",
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
