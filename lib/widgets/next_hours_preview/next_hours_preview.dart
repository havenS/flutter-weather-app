import 'package:flutter/material.dart';
import 'package:weather_app/helpers/device.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';

import 'hour_preview.dart';

class NextHoursPreview extends StatelessWidget {
  const NextHoursPreview({Key? key, required this.nextHours}) : super(key: key);

  final List<Current> nextHours;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 20.0,
        runSpacing: 20.0,
        children: nextHours
            .sublist(0, DeviceHelpers.isMobile(context) ? 3 : 8)
            .map((hour) => HourPreview(hour: hour))
            .toList(),
      ),
    );
  }
}
