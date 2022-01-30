import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

import 'details_header.dart';
import 'details_header.web.dart' as web;

// Not used in app, here to demonstrate conditional rendering based on platform
// Can also be used with:
// import 'details_header.dart' if (dart.library.html) 'details_header.web.dart';
detailsHeaderStory(Dashbook dashbook) {
  dashbook
      .storiesOf('Details header')
      .add(
          'mobile',
          (DashbookContext context) => const Center(
                child: DetailsHeader(
                    date: 'Monday, May 1',
                    weatherImageUrl:
                        '//cdn.weatherapi.com/weather/64x64/day/113.png',
                    cityName: 'Bordeaux',
                    countryName: 'France',
                    temperature: 20.1),
              ))
      .add(
          'web',
          (DashbookContext context) => const web.DetailsHeader(
              date: 'Monday, May 1',
              weatherImageUrl: '//cdn.weatherapi.com/weather/64x64/day/113.png',
              cityName: 'Bordeaux',
              countryName: 'France',
              temperature: 20.1));
}
