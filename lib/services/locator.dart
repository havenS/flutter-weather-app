import 'package:get_it/get_it.dart';
import 'package:weather_app/providers/app_data.dart';
import 'package:weather_app/services/geocoding_api.dart';
import 'package:weather_app/providers/search_form.dart';
import 'package:weather_app/services/open_weather_api.dart';
import 'package:weather_app/services/storage.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<Storage>(Storage());

  locator.registerSingleton<OpenWeatherApi>(OpenWeatherApi());
  locator.registerSingleton<GeocodingApi>(GeocodingApi());

  locator.registerLazySingleton<AppData>(() => AppData());
  locator.registerFactory(() => SearchForm());
}
