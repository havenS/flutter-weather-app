import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/mocks/weather_data.dart';

import 'city_week_forecast.dart';

cityWeekForecastCardStory(Dashbook dashbook) {
  dashbook.storiesOf('City week forecast').add(
      'default',
      (DashbookContext context) => Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
            child: Wrap(
              children: [
                CityWeekForecast(
                  forecast: mockWeatherData.daily,
                ),
              ],
            ),
          ));
}
