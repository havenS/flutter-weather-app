import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/widgets/city_week_forecast/city_week_forecast.dashbook.dart';
import 'package:weather_app/widgets/search_modal/search_modal.dashbook.dart';

import 'services/locator.dart';
import 'widgets/city_card/city_card.dashbook.dart';
import 'widgets/city_list_item/city_list_item.dashbook.dart';
import 'widgets/day_preview/day_preview.dashbook.dart';
import 'widgets/search_bar/search_bar.dashbook.dart';
import 'widgets/weather_block/weather_block.dashbook.dart';
import 'widgets/add_city_card/add_city_card.dashbook.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  setupLocator();

  final dashbook = Dashbook();

  searchModalStory(dashbook);

  weatherBlockStory(dashbook);
  dayPreviewStory(dashbook);
  cityWeekForecastCardStory(dashbook);
  addCityCardStory(dashbook);
  cityCardStory(dashbook);
  cityListItemStory(dashbook);
  searchBarItemStory(dashbook);

  runApp(dashbook);
}
