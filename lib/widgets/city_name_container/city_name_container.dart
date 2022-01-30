import 'package:flutter/material.dart';

class CityNameContainer extends StatelessWidget {
  const CityNameContainer(
      {Key? key, required this.cityName, required this.child})
      : super(key: key);

  final String cityName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'city_$cityName',
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
