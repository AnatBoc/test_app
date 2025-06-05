import 'package:flutter/material.dart';
import 'package:test_app/home_page/home_page.dart';

void main() {
  runApp(const Main());
}

/// The main class
class Main extends StatelessWidget {
  /// Just key here
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
