import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/helpers/device.dart';
import 'package:weather_app/providers/app_data.dart';

import 'home_left_block.dart';
import 'home_right_block.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<AppData>(builder: (context, appData, _) {
      return appData.isLoading
          ? const Text('Loading ...')
          : Row(children: [
              HomeLeftBlock(
                favorites: appData.favorites,
                selectedFavorite: appData.selectedFavorite,
                currentWeather: appData.weather,
              ),
              if (!DeviceHelpers.isMobile(context))
                HomeRightBlock(
                  currentWeather: appData.weather,
                  selectedFavorite: appData.selectedFavorite,
                )
            ]);
    }));
  }
}
