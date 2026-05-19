import 'package:ad_camp/core/constants/string_constants.dart';
import 'package:ad_camp/core/services/notification_service.dart';
import 'package:ad_camp/core/theme/app_theme.dart';
import 'package:ad_camp/models/campaigns_list_model/campaigns_list_model.dart';
import 'package:ad_camp/models/hive_adapters/hive_registrar.g.dart';
import 'package:ad_camp/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.init();
  await Hive.initFlutter();
  Hive.registerAdapters();
  await Hive.openBox<CampaignsListModel>(StringConstants.campaignBox);
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ConnectivityAppWrapper(
      app: MaterialApp(
        theme: AppTheme.theme,
        home: ConnectivityWidgetWrapper(
          disableInteraction: true,
          offlineWidget: Scaffold(body: Center(child: Text("You are offline"))),
          child: BottomNavBarScreen(),
        ),
      ),
    );
  }
}
