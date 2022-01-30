import 'dart:convert';

class GeocodingSearchResult {
  GeocodingSearchResult({
    required this.importance,
    required this.licence,
    required this.welcomeClass,
    required this.osmId,
    required this.displayName,
    required this.osmType,
    required this.lon,
    required this.placeId,
    required this.boundingbox,
    required this.lat,
    required this.type,
  });

  final double importance;
  final String licence;
  final String? welcomeClass;
  final int osmId;
  final String displayName;
  final String osmType;
  final String lon;
  final int placeId;
  final List<String> boundingbox;
  final String lat;
  final String type;

  factory GeocodingSearchResult.fromRawJson(String str) =>
      GeocodingSearchResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GeocodingSearchResult.fromJson(Map<String, dynamic> json) =>
      GeocodingSearchResult(
        importance: json["importance"].toDouble(),
        licence: json["licence"],
        welcomeClass: json["class"],
        osmId: json["osm_id"],
        displayName:
            '${json["address"]['city']}, ${json["address"]['country']}',
        osmType: json["osm_type"],
        lon: json["lon"],
        placeId: json["place_id"],
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
        lat: json["lat"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "importance": importance,
        "licence": licence,
        "class": welcomeClass,
        "osm_id": osmId,
        "display_name": displayName,
        "osm_type": osmType,
        "lon": lon,
        "place_id": placeId,
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
        "lat": lat,
        "type": type,
      };
}
