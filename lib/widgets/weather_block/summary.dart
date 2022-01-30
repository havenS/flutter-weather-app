import 'package:flutter/material.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/widgets/weather_icon/weather_icon.dart';

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

  final Current currentWeather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WeatherIcon(
          icon: currentWeather.weather.first.icon,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${currentWeather.temp}°',
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              currentWeather.weather.first.description,
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
