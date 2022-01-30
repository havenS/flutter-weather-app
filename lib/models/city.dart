class City {
  final String name;
  final String latitude;
  final String longitude;

  City(this.name, this.latitude, this.longitude);

  Map<String, dynamic> toJson() => {
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
      };
}
