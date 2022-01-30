import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/providers/app_data.dart';
// import 'package:weather_app/screens/details/details.dart';
import 'package:weather_app/services/locator.dart';
import 'package:weather_app/services/open_weather_api.dart';
import 'package:weather_app/widgets/weather_icon/weather_icon.dart';

class CityListItem extends StatelessWidget {
  final AppData _appData = locator<AppData>();
  final OpenWeatherApi _weatherApi = locator<OpenWeatherApi>();
  final City city;

  CityListItem({Key? key, required this.city}) : super(key: key);

  void _onPressed(BuildContext context) {
    // Navigator.pushNamed(context, DetailsScreen.routeName,
    //     arguments: DetailsScreenArguments(city));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _appData,
      builder: (context, child) => FutureBuilder(
          future: _weatherApi.getCityWeather(city),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              WeatherResult data = snapshot.data as WeatherResult;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: WeatherIcon(
                      icon: data.current.weather.first.icon,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      city.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      '${data.current.temp}°C',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                    width: 80.0,
                    child: TextButton(
                        onPressed: () => _appData.changeFavoritesStatus(city),
                        child: Icon(context.watch<AppData>().isFavorite(city)
                            ? Icons.favorite
                            : Icons.favorite_border)),
                  ),
                  SizedBox(
                    height: 80.0,
                    width: 80.0,
                    child: TextButton(
                        onPressed: () => _onPressed(context),
                        child: const Icon(Icons.chevron_right)),
                  )
                ],
              );
            } else {
              return Text('Loading ${city.name} ...');
            }
          }),
    );
  }
}
