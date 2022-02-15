class City {
  City(this.name, this.latitude, this.longitude);

  String name;
  double latitude;
  double longitude;

  Map<String, dynamic> toJson() => {
    "name": name,
    "latitude": latitude,
    "longitude": longitude,
  };
}
