import 'dart:math' as math;

import 'package:flutter/material.dart';

/// [HomePage] - The home page
class HomePage extends StatefulWidget {
  /// Just key here
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

/// Could be transfered to bloc to use StatefulWidget only,
///  but not needed for this requirements
class _HomePageState extends State<HomePage> {
  Color _color = Colors.white;

  /// if we will use this method from >1 classes, should be 
  /// moved to utils folder
  Color colorGenerator() {
    const maxColor = 0xFFFFFF;
    const opacity = 255;
    final randomColor = math.Random().nextDouble() * maxColor;

    return Color(randomColor.toInt()).withAlpha(opacity);
  }

  void _changeColor() {
    setState(() {
      _color = colorGenerator();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _color,
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello there'),
            ],
          ),
        ),
      ),
    );
  }
}
