import 'package:ad_camp/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/view/screens/campaign/widgets/objective_filter_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampaignSearchField extends StatelessWidget {
  const CampaignSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => TextField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        onChanged: (value) =>
            ref.read(campaignDataSourceControllerProvider.notifier).searchCampaigns(value),
        decoration: InputDecoration(
          hintText: 'Search Campaigns...',
          prefixIcon: Icon(Icons.search, color: ColorConstants.whiteSmoke),
          suffixIcon: ObjectiveFilterIcon(),
        ),
      ),
    );
  }
}
