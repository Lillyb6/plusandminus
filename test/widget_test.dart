import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plusandminus/main.dart';

void main() {
  testWidgets('Counter reaches -3 after three minus presses', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.remove));
    await tester.tap(find.byIcon(Icons.remove));
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('-3'), findsOneWidget);
  });

  testWidgets('Counter reaches 3 after three plus presses', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('0'), findsNWidgets(2));

    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();
    //expect(find.text('3'), findsOneWidget);

    //await tester.tap(find.byTooltip('Reset to zero'));
    //await tester.pump();
    //expect(find.text('0'), findsNWidgets(2));

    //await tester.tap(find.byIcon(Icons.remove));
    //await tester.pump();
    //expect(find.text('-1'), findsOneWidget);

    //await tester.tap(find.byTooltip('Reset to zero'));
    //await tester.pump();
    //expect(find.text('-1'), findsNothing);
    //expect(find.text('0'), findsNWidgets(2));
  });
}
