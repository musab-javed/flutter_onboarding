import 'package:dev_example/main.dart';
import 'package:dev_example/random_number/pages/random_num_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets(('Description of your test'), (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(RandomNumberPage), findsOneWidget);
    await tester.pump();
    expect(find.text('Random number generator!'), findsOneWidget);
  });
}
