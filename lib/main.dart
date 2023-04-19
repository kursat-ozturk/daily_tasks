import 'package:flutter/material.dart';
import './models/color_theme_data.dart';
import './models/items_data.dart';
import 'package:provider/provider.dart';
import './screens/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(
        create: (context) => ColorThemeData())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ColorThemeData>(context).selectedThemeData,
      home: const HomePage(),
    );
  }
}
