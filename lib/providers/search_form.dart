import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/geocoding_api/geocoding_search_result.dart';
import 'package:weather_app/providers/app_data.dart';
import 'package:weather_app/services/geocoding_api.dart';
import 'package:weather_app/services/locator.dart';

class SearchForm extends ChangeNotifier {
  final AppData _appData = locator<AppData>();
  final GeocodingApi _geocodingApi = locator<GeocodingApi>();

  String value = '';
  List<GeocodingSearchResult> searchResults = [];

  void setValue(String newValue) async {
    List<GeocodingSearchResult> results =
        await _geocodingApi.searchCity(newValue);

    value = newValue;
    searchResults = results;
    notifyListeners();
  }

  void setSelectedCity(City city) {
    value = '';
    searchResults = [];
    _appData.addToFavorites(city);
    notifyListeners();
  }

  // To be used when guessing city by location is implemented
  void getCityByLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      timeLimit: const Duration(seconds: 5),
      forceAndroidLocationManager: true,
    );

    Future city = _geocodingApi.getCityByLocation(
      position.latitude,
      position.longitude,
    );
  }
}
