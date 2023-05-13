import 'dart:math';
import 'package:flutter/material.dart';
import 'package:generate_color/core/constant_string.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int red = 0;
  int green = 0;
  int blue = 0;
  double opacity = 1;
  final int range = 255;
  final Random random = Random();
  Color _color = const Color.fromRGBO(0, 0, 0, 1);

  void _generateRandomColor() {
    red = random.nextInt(range);
    green = random.nextInt(range);
    blue = random.nextInt(range);
    opacity = random.nextDouble();

    setState(() {
      _color = Color.fromRGBO(red, green, blue, opacity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _generateRandomColor();
      },
      child: Scaffold(
        backgroundColor: _color,
        body: const Center(
          child: Text(
            ConstantString.welcomeMessage,
          ),
        ),
      ),
    );
  }
}
