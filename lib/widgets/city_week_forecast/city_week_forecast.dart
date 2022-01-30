import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/helpers/device.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/widgets/weather_icon/weather_icon.dart';

class CityWeekForecast extends StatelessWidget {
  const CityWeekForecast({Key? key, required this.forecast}) : super(key: key);

  final List<Daily> forecast;

  @override
  Widget build(BuildContext context) {
    bool isMobile = DeviceHelpers.isMobile(context);

    return DataTable(
      columns: [
        const DataColumn(
          label: Text('Date', style: TextStyle(fontSize: 35)),
        ),
        const DataColumn(
          label: Text('Day °C', style: TextStyle(fontSize: 35)),
        ),
        const DataColumn(
          label: Text('Weather', style: TextStyle(fontSize: 35)),
        ),
        if (!isMobile)
          const DataColumn(
            label: Text('Min °C', style: TextStyle(fontSize: 35)),
          ),
        if (!isMobile)
          const DataColumn(
            label: Text('Max °C', style: TextStyle(fontSize: 35)),
          ),
        if (!isMobile)
          const DataColumn(
            label: Text('Humidity', style: TextStyle(fontSize: 35)),
          ),
      ],
      rows: forecast
          .map((day) => DataRow(
                cells: [
                  DataCell(
                    Text(
                        DateFormat('EEEE').format(
                            DateTime.fromMillisecondsSinceEpoch(day.dt * 1000)),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.normal)),
                  ),
                  DataCell(
                    Text(day.temp.day.round().toString() + '°C',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.normal)),
                  ),
                  DataCell(
                    SizedBox(
                        height: 40,
                        child: WeatherIcon(icon: day.weather.first.icon)),
                  ),
                  if (!isMobile)
                    DataCell(
                      Text(day.temp.min.round().toString() + '°C',
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.normal)),
                    ),
                  if (!isMobile)
                    DataCell(
                      Text(day.temp.max.round().toString() + '°C',
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.normal)),
                    ),
                  if (!isMobile)
                    DataCell(Text(day.humidity.toString() + '%',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.normal))),
                ],
              ))
          .toList(),
    );
  }
}
