import 'package:dashbook/dashbook.dart';
import 'package:weather_app/mocks/weather_data.dart';

import 'weather_block.dart';

weatherBlockStory(Dashbook dashbook) {
  dashbook.storiesOf('Weather block').add('default', (DashbookContext context) {
    return WeatherBlock(
        cityName: 'Bordeaux', weather: mockWeatherData, date: DateTime.now());
  });
}
