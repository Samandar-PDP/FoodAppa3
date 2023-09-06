import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/my_theme.dart';
import 'package:food_app/screen/main_page.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.isDark ? ThemeData.dark(useMaterial3: true) : ThemeData.light(useMaterial3: true),
      home: const MainPage(),
    );
  }
}
