import 'package:flutter/material.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/open_weather_api/weather_result.dart';
import 'package:weather_app/services/locator.dart';
import 'package:weather_app/services/open_weather_api.dart';
import 'package:weather_app/services/storage.dart';

class AppData extends ChangeNotifier {
  final Storage _storage = locator<Storage>();
  bool isLoading = true;
  List<City> favorites = [];
  City? selectedFavorite;
  WeatherResult? weather;

  AppData() {  
    _storage.getFavorites().then((savedFavorites) {
      isLoading = false;

      if (savedFavorites.isNotEmpty) {
        favorites = savedFavorites;
        setSelectedFavorite(savedFavorites.first);
      }

      notifyListeners();
    });
  }

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void addToFavorites(City city) {
    if (isFavorite(city)) {
      return;
    }

    favorites.add(city);

    if (favorites.length == 1) {
      setSelectedFavorite(city);
    }

    _storage.saveFavorites(favorites);
    notifyListeners();
  }

  void removeFromFavorites(City city) {
    favorites.removeWhere((favCity) => favCity.name == city.name);

    _storage.saveFavorites(favorites);

    if (favorites.isEmpty) {
      selectedFavorite = null;
      weather = null;
    }

    if (selectedFavorite != null && selectedFavorite!.name == city.name) {
      setSelectedFavorite(favorites.first);
    }

    notifyListeners();
  }

  void changeFavoritesStatus(City city) {
    if (isFavorite(city)) {
      favorites.removeWhere((favCity) => favCity.name == city.name);
    } else {
      favorites.add(city);
    }

    _storage.saveFavorites(favorites);
    notifyListeners();
  }

  bool isFavorite(City city) {
    return favorites.where((favCity) => favCity.name == city.name).isNotEmpty;
  }

  void setSelectedFavorite(City city) async {
    selectedFavorite = city;

    if (selectedFavorite != null) {
      final weatherService = locator<OpenWeatherApi>();
      final weather = await weatherService.getCityWeather(city);
      this.weather = weather;
    }

    notifyListeners();
  }
}
