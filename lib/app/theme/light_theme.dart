import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primary,
  scaffoldBackgroundColor: const Color(0xFFFAFAFC),
  dividerColor: grey2,
  splashColor: primary.withAlpha(25),
  highlightColor: primary.withAlpha(50),
  iconTheme: const IconThemeData(color: black2),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 4,
    iconTheme: IconThemeData(color: black2),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: grey3,
    hintStyle: TextStyle(color: grey1),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primary,
    textTheme: ButtonTextTheme.primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primary,
      side: const BorderSide(color: primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: primary),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: grey1,
    labelStyle: TextStyle(color: black2),
    secondarySelectedColor: goldenLight,
  ),
  cardTheme: const CardThemeData(
    color: Colors.white,
    shadowColor: Colors.black45,
    elevation: 2,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: grey1,
    selectedItemColor: Colors.white,
  ),
  colorScheme:
      ColorScheme.fromSwatch(
        primarySwatch: const MaterialColor(0xfffe3451, <int, Color>{
          50: Color(0xFFFFF2F4),
          100: Color(0xFFFEDDDF),
          200: Color(0xFFFEC3C4),
          300: Color(0xFFFDA9AA),
          400: Color(0xFFFC9394),
          500: primary,
          600: Color(0xFFFD304E),
          700: Color(0xFFFD2C4A),
          800: Color(0xFFFD2846),
          900: Color(0xFFFD213C),
        }),
        accentColor: goldenLight,
      ).copyWith(
        primary: primary,
        primaryContainer: const Color(0xFFFDF3F4),
        onPrimaryContainer: Colors.black,
        secondary: goldenLight,
        onSecondary: Colors.black,
        secondaryContainer: const Color(0xFFFFB3B8),
        onSecondaryContainer: Colors.black,
        tertiary: primaryDark,
        surface: Colors.white,
        onSurface: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        shadow: Colors.black26,
        outline: Colors.grey.shade300,
        inverseSurface: const Color(0xFF343333),
        onInverseSurface: Colors.white,
        inversePrimary: const Color(0xFFFFB3B8),
        surfaceTint: const Color(0xFFFD0029),
      ),
);
