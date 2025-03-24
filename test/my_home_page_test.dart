import 'package:counter_test/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'given counter is 0 and increment button is pressed then counter should be 1',
    (widgetTester) async {
      await widgetTester.pumpWidget(const MaterialApp(home: MyHomePage(title: 'Counter Unit Test')));
      final ctr = find.text('0');
      expect(ctr, findsOneWidget);

      final ctr2 = find.text('1');
      expect(ctr2, findsNothing);

      final incrementBtn = find.byIcon(Icons.add);
      await widgetTester.tap(incrementBtn);
      await widgetTester.pump();

      final ctr3 = find.text('1');
      expect(ctr3, findsOneWidget);

      expect(find.byType(AppBar), findsOneWidget);
    },
  );
}
