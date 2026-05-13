import 'package:ad_camp/controller/campaign_data_source_controller/campaign_data_source/campaign_data_source_controller.dart';
import 'package:ad_camp/core/constants/campaign_status_enum.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/utils/string_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampaignFilterChips extends ConsumerWidget {
  const CampaignFilterChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(campaignDataSourceControllerProvider);
    final selectedFilter = controller.value?.selectedStatusFilter;
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        _CampaignFilterChip(
          label: "All",
          isSelected: selectedFilter == null,
          onTap: () {
            ref.read(campaignDataSourceControllerProvider.notifier).filterStatus(null);
          },
        ),

        ...CampaignStatusEnum.values.map((status) {
          return _CampaignFilterChip(
            label: status.name.toTitleCase(),
            isSelected: selectedFilter == status,
            onTap: () {
              ref.read(campaignDataSourceControllerProvider.notifier).filterStatus(status);
            },
          );
        }),
      ],
    );
  }
}

class _CampaignFilterChip extends StatelessWidget {
  const _CampaignFilterChip({required this.label, required this.isSelected, required this.onTap});

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

          color: isSelected ? ColorConstants.balticSea : ColorConstants.darkJungleGreen,

          border: Border.all(color: isSelected ? Colors.transparent : ColorConstants.balticSea),
        ),

        child: Text(
          label,
          style: TextStyleConstants.f10w400.copyWith(
            color: isSelected ? ColorConstants.whiteSmoke : ColorConstants.starDust,
          ),
        ),
      ),
    );
  }
}
