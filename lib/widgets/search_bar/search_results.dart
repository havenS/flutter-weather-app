import 'package:flutter/material.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/geocoding_api/geocoding_search_result.dart';
import 'package:weather_app/providers/search_form.dart';
import 'package:weather_app/services/locator.dart';

class SearchResults extends StatelessWidget {
  SearchResults({Key? key, required this.searchResults}) : super(key: key);

  final SearchForm _searchForm = locator<SearchForm>();
  final List<GeocodingSearchResult> searchResults;

  _handleResultPressed(
      BuildContext context, String name, double latitude, double longitude) {
    City city = City(name, latitude, longitude);
    _searchForm.setSelectedCity(city);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return searchResults.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: searchResults
                    .map((result) => TextButton(
                          onPressed: () => _handleResultPressed(context,
                              result.displayName, double.parse(result.lat), double.parse(result.lon)),
                          child: Text(
                            result.displayName,
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 30),
                          ),
                        ))
                    .toList(),
              ),
            ),
          )
        : Container();
  }
}
