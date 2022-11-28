import 'package:flutter_test/flutter_test.dart';
import 'package:dev_example/main.dart' as app;

void main() {
  group('Test whole app', () {
    testWidgets('verifying workflow', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('Random number generator!'), findsOneWidget);

      //our only button on main page
      final Finder button = find.text('Regenerate');
      expect(button, findsOneWidget);

      // Emulate a tap on the button.
      await tester.tap(button);
      await tester.pump();

      //repeat the behaviour several times
      await tester.pump(Duration(seconds: 2));
      await tester.tap(button);
      await tester.pump();

      await tester.pump(Duration(seconds: 2));
      await tester.tap(button);
      await tester.pump();
    });
  });
}
