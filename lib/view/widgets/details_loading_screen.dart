import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/app_loader.dart';
import 'package:ad_camp/view/widgets/shimmers/rectangular_shimmer.dart';
import 'package:flutter/material.dart';

class DetailsLoadingScreen extends StatelessWidget {
  const DetailsLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 5,
          children: List.generate(
            4,
            (index) => Expanded(child: RectangularShimmer(height: 80, width: 10, radius: 8)),
          ),
        ),
         const SizedBox(height: 18),

        AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Loading", style: TextStyleConstants.f16w600),
              const SizedBox(height: 20),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    RectangularShimmer(height: 10, width: double.infinity),
                itemCount: 3,
              ),
              const SizedBox(height: 28),
              Center(child: AppLoader(size: 50)),
              SizedBox(height: 28),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFF222227),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      RectangularShimmer(height: 10, width: double.infinity, radius: 20),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
