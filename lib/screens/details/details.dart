import 'package:flutter/material.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/widgets/city_name_container/city_name_container.dart';
import 'package:weather_app/widgets/logo/logo.dart';
import 'package:weather_app/widgets/next_hours_preview/next_hours_preview.dart';
import 'package:weather_app/widgets/weather_block/weather_block.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.city, required this.weather})
      : super(key: key);

  static const routeName = '/details';

  final City city;
  final WeatherResult weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 53,
              left: 15,
              child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  iconSize: 50,
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.chevron_left,
                  ))),
          const Positioned(top: 0, left: 80, child: Logo()),
          Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 100.0, 40.0, 0.0),
            child: ListView(
              children: [
                CityNameContainer(
                  cityName: city.name,
                  child: Text(
                    city.name,
                    style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                WeatherBlock(
                  weather: weather,
                  date: DateTime.now(),
                  cityName: city.name,
                ),
                NextHoursPreview(nextHours: weather.hourly),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
