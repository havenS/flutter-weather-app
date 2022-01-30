// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/services/locator.dart';

import 'models/open_weather_api/weather_result.test.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  setupLocator();

  // testWidgets('Search is displayed', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('Rechercher une ville'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the search input and type text.
  //   await tester.tap(find.byElementType(TextField));
  //   await tester.pump();
  //   await tester.enterText(find.byType(TextField), 'Paris');
  //   await tester.pump();
  // });

  test('Check parsing of Open Weather API', testWeatherResultParsing);
}
