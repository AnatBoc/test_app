import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_app/main.dart';

void main() {
  const initialColor = Colors.white;
  //Ideally tests should be structured better with groups groups
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const Main());
    expect(find.text('Hello there'), findsOneWidget);

    // Check if initial color is White
    expect(
      (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      initialColor,
    );
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Check if color changed
    expect(
      (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      isNot(initialColor),
    );
  });

  //If its needed, color generator fuction also can be covered by tests
}

/// For DRY can make function to get  Scaffold.backgroundColor, but for this case it
///  will make code more harder than easier
