import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.pinkAccent,
  scaffoldBackgroundColor: surfaceDark,
  dividerColor: grey800,
  splashColor: Colors.pinkAccent.withAlpha(25),
  highlightColor: Colors.pinkAccent.withAlpha(50),
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1F2839),
    foregroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: inputFillDark,
    hintStyle: TextStyle(color: grey1),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.pinkAccent,
    textTheme: ButtonTextTheme.primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.pinkAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.pinkAccent,
      side: const BorderSide(color: Colors.pinkAccent),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.pinkAccent),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: inputFillDark,
    labelStyle: TextStyle(color: Colors.white),
    secondarySelectedColor: goldenDark,
  ),
  cardTheme: const CardThemeData(
    color: Color(0xFF1F2839),
    shadowColor: Colors.black26,
    elevation: 2,
  ),
  dialogTheme: const DialogThemeData(backgroundColor: surfaceDark),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF17202D),
    unselectedItemColor: grey1,
    selectedItemColor: Colors.white,
  ),
  colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(
    primary: Colors.pinkAccent,
    onPrimary: Colors.white,
    primaryContainer: const Color(0xFF1F2839),
    onPrimaryContainer: Colors.white,
    secondaryContainer: const Color(0xFF120D14),
    onSecondaryContainer: Colors.white,
    secondary: goldenDark,
    onSecondary: Colors.black,
    surface: scaffoldDark,
    onSurface: Colors.white,
    error: const Color(0xFFFF6B6B),
    onError: Colors.white,
    shadow: Colors.white.withAlpha(26),
    outline: grey800,
    inverseSurface: Colors.white,
    onInverseSurface: Colors.black,
    inversePrimary: const Color(0xFFFFB3B8),
    surfaceTint: const Color.fromARGB(255, 102, 55, 71),
  ),
);
