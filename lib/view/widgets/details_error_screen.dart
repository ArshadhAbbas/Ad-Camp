import 'package:ad_camp/controller/campaign_details_controller/campaign_details_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsErrorScreen extends StatelessWidget {
  const DetailsErrorScreen({super.key, required this.campId});
  final String campId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2,
      child: Center(
        child: AppCard(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.fuzzyWuzzyBrown.withValues(alpha: 0.12),
                ),
                child: const Icon(
                  Icons.error_outline,
                  color: ColorConstants.fuzzyWuzzyBrown,
                  size: 30,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "Failed to load data",
                style: TextStyleConstants.f14w600,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Something went wrong",
                style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Consumer(
                builder: (context, ref, child) => TextButton(
                  child: Text("Retry"),
                  onPressed: () {
                    ref.invalidate(campaignDetailsControllerProvider(campid: campId));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
