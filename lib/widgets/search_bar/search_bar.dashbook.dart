import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

import 'search_bar.dart';

searchBarItemStory(Dashbook dashbook) {
  dashbook.storiesOf('Search bar').add(
      'default',
      (DashbookContext context) => const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
            child: SearchBar(),
          ));
}
