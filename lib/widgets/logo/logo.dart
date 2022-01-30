import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Weather ',
                style: TextStyle(fontSize: 60),
              ),
              Text(
                'Forecast',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
