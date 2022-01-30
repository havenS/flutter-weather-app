import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/widgets/weather_icon/weather_icon.dart';

class DayPreview extends StatelessWidget {
  const DayPreview({
    Key? key,
    required this.currentWeather,
    required this.onViewPressed,
    this.invertedColor = false,
  }) : super(key: key);

  final Current currentWeather;
  final Function()? onViewPressed;
  final bool invertedColor;

  @override
  Widget build(BuildContext context) {
    Color color = invertedColor ? Colors.white : Colors.black87;

    return DefaultTextStyle.merge(
      style: TextStyle(
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeatherIcon(icon: currentWeather.weather.first.icon),
                Column(
                  children: [
                    const Text('Today', style: TextStyle(fontSize: 40)),
                    Text(DateFormat('EE, DD MMM').format(DateTime.now()),
                        style: const TextStyle(fontSize: 30)),
                  ],
                )
              ],
            ),
            Text(currentWeather.temp.round().toString() + '°C',
                style: const TextStyle(fontSize: 90)),
            Text(
                'Sunrise ${DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(currentWeather.sunrise! * 1000))} - Sunset ${DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(currentWeather.sunset! * 1000))}',
                style: const TextStyle(fontSize: 25)),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: OutlinedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(color),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(
                      color: color,
                      width: 3,
                    ),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('View details', style: TextStyle(fontSize: 30)),
                ),
                onPressed: onViewPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
