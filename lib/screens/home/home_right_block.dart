import 'package:flutter/material.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/screens/details/details.dart';
import 'package:weather_app/transitions/hero_transition.dart';
import 'package:weather_app/widgets/day_preview/day_preview.dart';

class HomeRightBlock extends StatelessWidget {
  const HomeRightBlock({Key? key, this.currentWeather, this.selectedFavorite})
      : super(key: key);

  final WeatherResult? currentWeather;
  final City? selectedFavorite;

  @override
  Widget build(BuildContext context) {
    if (selectedFavorite == null) {
      return Container();
    }

    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.indigo.shade900,
          child: Center(
            child: currentWeather != null
                ? DayPreview(
                    currentWeather: currentWeather!.current,
                    invertedColor: true,
                    onViewPressed: () => Navigator.of(context).push(
                          HeroTransition(
                            routeName: DetailsScreen.routeName,
                            page: DetailsScreen(
                                city: selectedFavorite!,
                                weather: currentWeather!),
                          ),
                        ))
                : const CircularProgressIndicator(),
          ),
        ));
  }
}
// Navigator.of(context).pushNamed(