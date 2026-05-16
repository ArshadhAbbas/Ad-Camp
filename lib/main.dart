import 'package:ad_camp/core/services/notification_service.dart';
import 'package:ad_camp/core/theme/app_theme.dart';
import 'package:ad_camp/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.init();
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.theme, home: BottomNavBarScreen());
  }
}
