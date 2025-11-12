import 'package:flutter/material.dart';
import 'brand.dart';

class AppTheme {
  static ThemeData light([Color? seed]) => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seed ?? Brand.primarySeed,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cardTheme: const CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(Brand.radiusM)))),
      );

  static ThemeData dark([Color? seed]) => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seed ?? Brand.primarySeed,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cardTheme: const CardThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(Brand.radiusM)))),
      );
}
