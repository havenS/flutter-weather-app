import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final String date;
  final String countryName;
  final String cityName;
  final double temperature;
  final String weatherImageUrl;

  const DetailsHeader(
      {Key? key,
      required this.date,
      required this.countryName,
      required this.cityName,
      required this.temperature,
      required this.weatherImageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                'https:$weatherImageUrl'.replaceAll('64x64', '128x128'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$cityName, $countryName',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${temperature.toStringAsFixed(0)}°',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
