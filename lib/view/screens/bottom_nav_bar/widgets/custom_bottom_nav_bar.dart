import 'package:ad_camp/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavBarControllerProvider);

    final List<String> icons = [
      ImageConstants.campaign,
      ImageConstants.spendSummary,
      ImageConstants.alerts,
      ImageConstants.profile,
    ];

    return SafeArea(
      top: false,
      child: Container(
        height: 72,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: ColorConstants.darkJungleGreen,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: List.generate(icons.length, (index) {
            final bool isSelected = selectedIndex == index;

            return Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () {
                  ref.read(bottomNavBarControllerProvider.notifier).changeIndex(index);
                },
                child: Center(
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 220),
                    scale: isSelected ? 1.1 : 1,
                    child: SvgPicture.asset(
                      icons[index],
                      height: 35,
                      width: 35,
                      fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                        isSelected ? ColorConstants.topaz : Colors.white.withValues(alpha: 0.7),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
