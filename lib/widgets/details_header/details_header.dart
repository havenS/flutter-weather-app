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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$cityName, $countryName',
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
              'https:$weatherImageUrl'.replaceAll('64x64', '128x128'),
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Text(
              '${temperature.toStringAsFixed(1)}°',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
