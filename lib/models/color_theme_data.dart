import 'package:flutter/material.dart';

class ColorThemeData with ChangeNotifier {
  final ThemeData _greenTheme = ThemeData(
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      appBarTheme: const AppBarTheme(color: Colors.green),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
          .copyWith(secondary: Colors.green));
  final ThemeData _redTheme = ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.red,
      appBarTheme: const AppBarTheme(color: Colors.red),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
          .copyWith(secondary: Colors.red));

  ThemeData _selectedThemeData = ThemeData(
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      appBarTheme: const AppBarTheme(color: Colors.green),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
          .copyWith(secondary: Colors.green));

  bool isGreen = true;

  void switchTheme(bool selected) {
    _selectedThemeData = selected ? _greenTheme : _redTheme;
    isGreen = selected;
    notifyListeners();
  }

  ThemeData get selectedThemeData => _selectedThemeData;
}
