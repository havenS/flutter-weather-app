import 'package:flutter/material.dart';
import 'package:weather_app/helpers/device.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/providers/app_data.dart';
import 'package:weather_app/screens/details/details.dart';
import 'package:weather_app/services/locator.dart';
import 'package:weather_app/transitions/hero_transition.dart';
import 'package:weather_app/widgets/add_city_card/add_city_card.dart';
import 'package:weather_app/widgets/city_card/city_card.dart';
import 'package:weather_app/widgets/city_week_forecast/city_week_forecast.dart';
import 'package:weather_app/widgets/day_preview/day_preview.dart';
import 'package:weather_app/widgets/logo/logo.dart';

class HomeLeftBlock extends StatelessWidget {
  const HomeLeftBlock(
      {Key? key,
      required this.favorites,
      this.selectedFavorite,
      this.currentWeather})
      : super(key: key);

  final List<City> favorites;
  final City? selectedFavorite;
  final WeatherResult? currentWeather;

  @override
  Widget build(BuildContext context) {
    AppData _appData = locator<AppData>();

    List<Widget> citySelectionList = [];
    for (var city in favorites) {
      citySelectionList.add(CityCard(
        city: city,
        isActive: city.name == selectedFavorite?.name,
        onPressed: () => _appData.setSelectedFavorite(city),
        onDelete: () => _appData.removeFromFavorites(city),
      ));
    }
    citySelectionList.add(AddCityCard(onPressed: () {}));

    return Expanded(
        flex: 4,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          const Logo(),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: citySelectionList)),
          if (currentWeather != null)
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DeviceHelpers.isMobile(context)
                  ? DayPreview(
                      currentWeather: currentWeather!.current,
                      onViewPressed: () => Navigator.of(context).push(
                            HeroTransition(
                              routeName: DetailsScreen.routeName,
                              page: DetailsScreen(
                                  city: selectedFavorite!,
                                  weather: currentWeather!),
                            ),
                          ))
                  : CityWeekForecast(forecast: currentWeather!.daily),
            )
        ])));
  }
}
