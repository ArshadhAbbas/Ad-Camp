import 'package:ad_camp/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:ad_camp/view/screens/alerts/alerts_screen.dart';
import 'package:ad_camp/view/screens/bottom_nav_bar/widgets/custom_bottom_nav_bar.dart';
import 'package:ad_camp/view/screens/campaign/campaign_screen.dart';
import 'package:ad_camp/view/screens/profile/profile_screen.dart';
import 'package:ad_camp/view/screens/spend_summary/spend_summary_screen.dart';
import 'package:ad_camp/view/widgets/universal_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBarScreen extends ConsumerWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> screens = [
      const CampaignScreen(),
      const SpendSummaryScreen(),
      const AlertsScreen(),
      const ProfileScreen(),
    ];
    String getTitle() {
      switch (ref.watch(bottomNavBarControllerProvider)) {
        case 0:
          return 'Campaign List';
        case 1:
          return 'Spend Summary';
        case 2:
          return 'Anomaly Alerts';
        case 3:
          return 'Profile';
        default:
          return 'Ad Camp';
      }
    }

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: UniversalAppbar(title: getTitle()),
        body: SingleChildScrollView(child: screens[ref.watch(bottomNavBarControllerProvider)]),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
