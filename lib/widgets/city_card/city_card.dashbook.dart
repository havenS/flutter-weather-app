import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/city.dart';

import 'city_card.dart';

cityCardStory(Dashbook dashbook) {
  City city1 = City('Biganos, France', '44.6598338', '-1.0282456');

  dashbook.storiesOf('City card').add(
      'default',
      (DashbookContext context) => Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
            child: Wrap(
              children: [
                CityCard(
                  city: city1,
                  isActive: context.boolProperty('Is active', false),
                  onPressed: () => null,
                ),
              ],
            ),
          ));
}
