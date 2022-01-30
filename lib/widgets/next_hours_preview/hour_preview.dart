import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/widgets/weather_icon/weather_icon.dart';

class HourPreview extends StatelessWidget {
  const HourPreview({Key? key, required this.hour}) : super(key: key);

  final Current hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      width: 100,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateFormat('HH')
                  .format(DateTime.fromMillisecondsSinceEpoch(hour.dt * 1000)) +
              'h'),
          WeatherIcon(
            icon: hour.weather.first.icon,
          ),
          Text(hour.temp.round().toString() + '°C'),
        ],
      ),
    );
  }
}
