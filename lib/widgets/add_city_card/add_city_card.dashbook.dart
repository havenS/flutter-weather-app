import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

import 'add_city_card.dart';

addCityCardStory(Dashbook dashbook) {
  dashbook.storiesOf('Add city card').add(
      'default',
      (DashbookContext context) => Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
            child: Wrap(
              children: [
                AddCityCard(
                  onPressed: () => null,
                ),
              ],
            ),
          ));
}
