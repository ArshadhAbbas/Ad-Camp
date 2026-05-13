import 'package:ad_camp/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart';
import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/string_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ObjectiveFilterIcon extends StatelessWidget {
  const ObjectiveFilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Consumer(
                builder: (context, ref, child) => Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: CampaignObjectiveEnum.values.map((objective) {
                          return ListTile(
                            leading: Icon(
                              Icons.check,
                              size: 12,
                              color:
                                  ref
                                          .watch(campaignDataSourceControllerProvider)
                                          .value!
                                          .selectedObjectiveFilter ==
                                      objective
                                  ? ColorConstants.topaz
                                  : Colors.transparent,
                            ),
                            title: Text(
                              objective.name.toTitleCase(),
                              style: TextStyleConstants.f12w400.copyWith(
                                color: ColorConstants.whiteSmoke,
                              ),
                            ),
                            onTap: () {
                              ref
                                  .read(campaignDataSourceControllerProvider.notifier)
                                  .filterObjective(objective);
                              Navigator.pop(context);
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        ref
                            .read(campaignDataSourceControllerProvider.notifier)
                            .filterObjective(null);
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          color: ColorConstants.topaz.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Clear Filters",
                            style: TextStyleConstants.f14w600.copyWith(color: ColorConstants.topaz),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: SvgPicture.asset(ImageConstants.filterIcon),
      ),
    );
  }
}
