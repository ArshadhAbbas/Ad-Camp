import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campagn_search_field.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_filter_chips.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_overview_card.dart';
import 'package:flutter/material.dart';

class CampaignScreen extends StatelessWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          CampaignSearchField(),
          SizedBox(height: 13),
          CampaignFilterChips(),
          SizedBox(height: 13),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => CampaignOverviewCard(
              status: index % 2 == 0
                  ? CampaignStatusEnum.active
                  : index % 3 == 0
                  ? CampaignStatusEnum.ended
                  : CampaignStatusEnum.paused,
            ),
            separatorBuilder: (context, index) => SizedBox(height: 13),
          ),
        ],
      ),
    );
  }
}
