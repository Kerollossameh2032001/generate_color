import 'package:flutter/material.dart';
import 'package:generate_color/core/constant_string.dart';
import 'package:generate_color/core/constant_style.dart';
import 'package:generate_color/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantString.appTitle,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: ConstantStyle.textFontSize,
            color: Colors.white,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
