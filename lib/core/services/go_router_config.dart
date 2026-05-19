import 'package:ad_camp/core/constants/enums/campaign_status_enum.dart';
import 'package:ad_camp/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:ad_camp/view/screens/campaign_details/campaign_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterConfig {
  static final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: '/', builder: (context, state) => BottomNavBarScreen()),
      GoRoute(
        path: CampaignDetailsScreen.path,
        name: CampaignDetailsScreen.pathName,
        builder: (context, state) {
          final String campaignId =
              state.uri.queryParameters[CampaignDetailsScreen.campaignIdParam]!;
          final extra = state.extra as Map<String, dynamic>?;

          return CampaignDetailsScreen(
            campaignId: campaignId,
            title: extra?['title'],
            campaignStatus: extra?['campaignStatus'] as CampaignStatusEnum?,
            campaignObjective: extra?['campaignObjective'] as String?,
          );
        },
      ),
    ],
    errorBuilder: (context, state) {
      return Scaffold(body: Center(child: Text(state.error.toString())));
    },
  );
  static GoRouter get router => _router;
}
