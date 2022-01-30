import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';

// https://openweathermap.org/api
class OpenWeatherApi {
  late Dio _client;
  late String _apiKey;

  OpenWeatherApi() {
    BaseOptions options =
        BaseOptions(baseUrl: 'https://api.openweathermap.org');

    _client = Dio(options);
    _apiKey = dotenv.get('WEATHER_API_KEY');
  }

  Future getCityWeather(City city) {
    String endpoint = '/data/2.5/onecall';

    return _client.get(endpoint, queryParameters: {
      'lat': city.latitude,
      'lon': city.longitude,
      'appid': _apiKey,
      'units': 'metric',
    }).then((value) => WeatherResult.fromJson(value.data));
  }
}
