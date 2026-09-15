import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plusandminus/main.dart';

void main() {
  testWidgets('Counter increments, decrements, and resets', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byTooltip('Reset to zero'));
    await tester.pump();
    expect(find.text('0'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('-1'), findsOneWidget);

    await tester.tap(find.byTooltip('Reset to zero'));
    await tester.pump();
    expect(find.text('-1'), findsNothing);
    expect(find.text('0'), findsNWidgets(2));
  });
}
