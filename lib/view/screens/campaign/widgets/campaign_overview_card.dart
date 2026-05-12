import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/utils/date_time_extensions.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_bottom_info_section.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_card_header.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_metric_card.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_spend_section.dart';
import 'package:ad_camp/view/screens/campaign_details/campaign_details_screen.dart';
import 'package:flutter/material.dart';

class CampaignOverviewCard extends StatelessWidget {
  const CampaignOverviewCard({super.key, required this.status});
  final CampaignStatusEnum status;

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
            CampaignCardHeader(status: status),
            SizedBox(height: 13),
            CampaignSpendSection(),
            SizedBox(height: 18),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: CampaignMetricCard(
                    icon: ImageConstants.view,
                    value: "250K",
                    label: "Impressions",
                  ),
                ),
                Expanded(
                  child: CampaignMetricCard(
                    icon: ImageConstants.cursor,
                    value: "6.2K",
                    label: "Clicks",
                  ),
                ),
                Expanded(
                  child: CampaignMetricCard(
                    icon: ImageConstants.tradeUp,
                    value: "2.48%",
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
                  value: DateTime.now().formattedDate,
                ),
                CampaignBottomInfoSection(
                  icon: ImageConstants.target,
                  label: "All Audience",
                  value: "All Users, KSA",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
