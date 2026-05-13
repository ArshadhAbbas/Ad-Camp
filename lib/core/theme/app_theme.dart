import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      surface: ColorConstants.onyx, // Match your Scaffold color here
    ),
    scaffoldBackgroundColor: ColorConstants.onyx,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.darkJungleGreen,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorConstants.whiteSmoke),
      titleTextStyle: TextStyle(
        color: ColorConstants.whiteSmoke,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(color: ColorConstants.whiteSmoke),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: ColorConstants.whiteSmoke),
      bodyLarge: TextStyle(color: ColorConstants.whiteSmoke),
      bodySmall: TextStyle(color: ColorConstants.whiteSmoke),
      displayLarge: TextStyle(color: ColorConstants.whiteSmoke),
      displayMedium: TextStyle(color: ColorConstants.whiteSmoke),
      displaySmall: TextStyle(color: ColorConstants.whiteSmoke),
      headlineLarge: TextStyle(color: ColorConstants.whiteSmoke),
      headlineMedium: TextStyle(color: ColorConstants.whiteSmoke),
      headlineSmall: TextStyle(color: ColorConstants.whiteSmoke),
      labelLarge: TextStyle(color: ColorConstants.whiteSmoke),
      labelMedium: TextStyle(color: ColorConstants.whiteSmoke),
      labelSmall: TextStyle(color: ColorConstants.whiteSmoke),
      titleLarge: TextStyle(color: ColorConstants.whiteSmoke),
      titleMedium: TextStyle(color: ColorConstants.whiteSmoke),
      titleSmall: TextStyle(color: ColorConstants.whiteSmoke),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorConstants.darkJungleGreen,
      selectedItemColor: ColorConstants.topaz,
      unselectedItemColor: ColorConstants.silverSand,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorConstants.darkJungleGreen,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: ColorConstants.whiteSmoke),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: ColorConstants.whiteSmoke.withValues(alpha: 0.1)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: ColorConstants.whiteSmoke.withValues(alpha: 0.1)),
      ),
      hintStyle: TextStyleConstants.f14w600.copyWith(
        color: ColorConstants.whiteSmoke.withValues(alpha: 0.7),
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: WidgetStateProperty.fromMap({WidgetState.selected: ColorConstants.topaz}),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ColorConstants.darkJungleGreen,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyleConstants.f14w600.copyWith(color: ColorConstants.whiteSmoke);
        }

        return TextStyleConstants.f14w600.copyWith(
          color: ColorConstants.whiteSmoke.withValues(alpha: 0.7),
        );
      }),
    ),
  );
}
