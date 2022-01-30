import 'package:flutter/material.dart';

class SecondaryInfo extends StatelessWidget {
  const SecondaryInfo({Key? key, required this.value, required this.label})
      : super(key: key);

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        value,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Text(
        label,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w100,
        ),
      ),
    ]);
  }
}

class SecondaryInfoMap {
  final String value;
  final String label;

  SecondaryInfoMap(this.value, this.label);
}
