import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';

import 'secondary_info.dart';

class SecondaryBlock extends StatelessWidget {
  const SecondaryBlock({
    Key? key,
    required this.currentWeather,
  }) : super(key: key);

  final Current currentWeather;

  @override
  Widget build(BuildContext context) {
    List<SecondaryInfoMap> info = [
      SecondaryInfoMap('Feel', '${currentWeather.feelsLike}°C'),
      SecondaryInfoMap('Dew', '${currentWeather.dewPoint}°C'),
      SecondaryInfoMap('Humidity', '${currentWeather.humidity}%'),
      SecondaryInfoMap('Pressure', '${currentWeather.pressure} mb'),
      SecondaryInfoMap('Rain', '${currentWeather.rain ?? 0}%'),
      SecondaryInfoMap('UV', '${currentWeather.uvi}'),
      SecondaryInfoMap('Visibility', '${currentWeather.visibility}'),
      SecondaryInfoMap('Wind deg.', '${currentWeather.windDeg}°'),
      SecondaryInfoMap('Wind speed', '${currentWeather.windSpeed}km/h'),
      SecondaryInfoMap('Rain 1h', '${currentWeather.rain?.the1H ?? 0}%'),
      SecondaryInfoMap(
          'Sunrise',
          currentWeather.sunrise != null
              ? DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch(
                  currentWeather.sunrise! * 1000,
                  isUtc: true))
              : '-'),
      SecondaryInfoMap(
          'Sunset',
          currentWeather.sunset != null
              ? DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch(
                  currentWeather.sunset! * 1000,
                  isUtc: true))
              : '-'),
    ];

    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.center,
      spacing: 20.0,
      runSpacing: 20.0,
      children: info
          .map((i) => SecondaryInfo(value: i.value, label: i.label))
          .toList(),
    );
  }
}
