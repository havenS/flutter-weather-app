import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/models/city.dart';

List<City> defaultCities = [City("Lille", 50.6365654, 3.0635282), City("Bordeaux", 44.86342845, -0.5600879251945047)];

class Storage {
  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  final favoriteKey = "favorite";

  Future<List<City>> getFavorites() async {
    String value = (await _prefs).getString(favoriteKey) ?? '[]';
    List<dynamic> favorites = jsonDecode(value);
    List<City> cities = favorites
        .map((x) => City(x['name']!, x['latitude']!, x['longitude']!))
        .toList();

    return cities.isNotEmpty ? cities : defaultCities;
  }

  saveFavorites(List<City> favorites) async {
    String data = json.encode(favorites.map((favorite) => favorite.toJson()).toList());

    (await _prefs).setString(favoriteKey, data);

  }
}
