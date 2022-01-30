import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/helpers/device.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/widgets/city_week_forecast/city_week_forecast.dart';

import 'summary.dart';
import 'secondary_block.dart';

class WeatherBlock extends StatelessWidget {
  const WeatherBlock({
    Key? key,
    required this.cityName,
    required this.weather,
    required this.date,
  }) : super(key: key);

  final String cityName;
  final WeatherResult weather;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    Current today = weather.current;

    return Column(children: [
      Text(
        DateFormat('EEEE DD MMM yyyy').format(date),
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      DeviceHelpers.isMobileOrTablet(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Summary(currentWeather: today),
                SecondaryBlock(
                  currentWeather: today,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Summary(currentWeather: today),
                Flexible(
                  child: SecondaryBlock(
                    currentWeather: today,
                  ),
                ),
              ],
            ),
      CityWeekForecast(forecast: weather.daily)
    ]);
  }
}
