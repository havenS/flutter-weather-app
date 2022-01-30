import 'package:dashbook/dashbook.dart';
import 'package:weather_app/mocks/weather_data.dart';
import 'package:weather_app/widgets/day_preview/day_preview.dart';

dayPreviewStory(Dashbook dashbook) {
  dashbook.storiesOf('Day preview').decorator(CenterDecorator()).add(
      'Default',
      (DashbookContext context) => DayPreview(
            currentWeather: mockWeatherData.current,
            onViewPressed: () {},
          ));
}
