import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/view/screens/campaign/widgets/objective_filter_icon.dart';
import 'package:flutter/material.dart';

class CampaignSearchField extends StatelessWidget {
  const CampaignSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: 'Search Campaigns...',
        prefixIcon: Icon(Icons.search, color: ColorConstants.whiteSmoke),
        suffixIcon: ObjectiveFilterIcon(),
      ),
    );
  }
}
