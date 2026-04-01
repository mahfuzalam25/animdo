// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:animdo/main.dart';

void main() {
  testWidgets('HomePage UI test', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const MyApp());

    // Check "Basic" text exists
    expect(find.text('Basic'), findsOneWidget);

    //  Check star icon exists
    expect(find.byIcon(Icons.star_border), findsOneWidget);
  });

  testWidgets('Button tap animation test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Find the animated container (your button)
    final button = find.text('Basic');

    expect(button, findsOneWidget);

    // Tap the button
    await tester.tap(button);
    await tester.pump(); // trigger rebuild

    // No crash = test passed (basic interaction test)
  });
}
