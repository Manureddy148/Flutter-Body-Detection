import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_object_detection/main.dart';

void main() {
  testWidgets('HomeScreen has a camera view', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that the camera view is present
    expect(find.byType(CameraView), findsOneWidget);
  });

  testWidgets('HomeScreen displays a title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that the title is displayed
    expect(find.text('Object Detection'), findsOneWidget);
  });
}