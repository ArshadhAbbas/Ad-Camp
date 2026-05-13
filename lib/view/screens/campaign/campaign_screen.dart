import 'package:ad_camp/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_filter_chips.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_overview_card.dart';
import 'package:ad_camp/view/screens/campaign/widgets/campaign_search_field.dart';
import 'package:ad_camp/view/widgets/app_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          Consumer(
            builder: (context, ref, child) {
              final campaigns = ref.watch(campaignDataSourceControllerProvider);
              return campaigns.when(
                data: (data) =>
                    data.filteredList.campaigns != null && data.filteredList.campaigns!.isNotEmpty
                    ? Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {},
                          child: ListView.separated(
                            itemCount: data.filteredList.campaigns!.length,
                            itemBuilder: (context, index) =>
                                CampaignOverviewCard(campaign: data.filteredList.campaigns![index]),
                            separatorBuilder: (context, index) => SizedBox(height: 13),
                          ),
                        ),
                      )
                    : Center(child: Text('No campaigns found.')),
                error: (error, stackTrace) => Center(child: Text('Error occurred:$error')),
                loading: () => Center(child: AppLoader(size: 30)),
              );
            },
          ),
        ],
      ),
    );
  }
}
