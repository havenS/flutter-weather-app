import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/models/city.dart';

String defaultCities =
    '[{"name":"Lille, France","latitude":"50.6365654","longitude":"3.0635282"},{"name":"Bordeaux, France","latitude":"44.86342845","longitude":"-0.5600879251945047"},{"name":"Nantes, France","latitude":"47.2186371","longitude":"-1.5541362"},{"name":"Marseille, France","latitude":"43.29408","longitude":"5.443648394624866"}]';

class Storage {
  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  final favoriteKey = "favorite";

  Future<List<City>> getFavorites() async {
    String value = (await _prefs).getString(favoriteKey) ?? '[]';
    List<dynamic> json = jsonDecode(value != '[]' ? value : defaultCities);

    return json
        .map((x) => City(x['name']!, x['latitude']!, x['longitude']!))
        .toList();
  }

  saveFavorites(List<City> favorites) async {
    (await _prefs).setString(favoriteKey,
        json.encode(favorites.map((favorite) => favorite.toJson()).toList()));
  }
}
