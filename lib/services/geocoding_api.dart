import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/models/geocoding_api/geocoding_search_result.dart';

// https://rapidapi.com/GeocodeSupport/api/forward-reverse-geocoding/
class GeocodingApi {
  late Dio _client;

  GeocodingApi() {
    BaseOptions options = BaseOptions(
        baseUrl: 'https://forward-reverse-geocoding.p.rapidapi.com',
        headers: {
          'x-rapidapi-host': 'forward-reverse-geocoding.p.rapidapi.com',
          'x-rapidapi-key': dotenv.get('GEOCODING_API_KEY')
        });

    _client = Dio(options);
  }

  Future _reverseGeocoding(double latitude, double longitude) {
    String endpoint = '/v1/reverse';

    return _client.get(endpoint, queryParameters: {
      'lat': latitude,
      'lon': longitude,
      'accept-language': 'fr',
      'polygon_threshold': '0.0'
    });
  }

  Future _geocodingSearch(String query) {
    String endpoint = '/v1/search';

    return _client.get(endpoint, queryParameters: {
      'q': query,
      'addressdetails': '1',
      'limit': 20,
      'accept-language': 'fr',
      'countrycodes': 'fr',
    });
  }

  Future getCityByLocation(double latitude, double longitude) {
    return _reverseGeocoding(latitude, longitude).then((response) {
      if (response.data.isEmpty) {
        return [];
      }

      return response.data;
    });
  }

  Future<List<GeocodingSearchResult>> searchCity(String search) {
    return _geocodingSearch(search).then((response) {
      if (response.data.isEmpty) {
        return [];
      }

      return response.data
          .where((result) =>
              result['type'] != null &&
              result['address']['city'] != null &&
              result['type'] == 'administrative')
          .map<GeocodingSearchResult>(
              (result) => GeocodingSearchResult.fromJson(result))
          .toList();
    });
  }
}
