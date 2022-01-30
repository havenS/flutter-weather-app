import 'package:weather_app/models/open_weather_api/weather_result.dart';

WeatherResult mockWeatherData = WeatherResult.fromJson({
  "lat": 33.44,
  "lon": -94.04,
  "timezone": "America/Chicago",
  "timezone_offset": -21600,
  "current": {
    "dt": 1642578904,
    "sunrise": 1642598333,
    "sunset": 1642635274,
    "temp": 13.35,
    "feels_like": 12.96,
    "pressure": 1012,
    "humidity": 85,
    "dew_point": 10.88,
    "uvi": 0,
    "clouds": 7,
    "visibility": 10000,
    "wind_speed": 4.02,
    "wind_deg": 198,
    "wind_gust": 9.83,
    "weather": [
      {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
    ]
  },
  "hourly": [
    {
      "dt": 1642575600,
      "temp": 13.33,
      "feels_like": 12.96,
      "pressure": 1012,
      "humidity": 86,
      "dew_point": 11.04,
      "uvi": 0,
      "clouds": 6,
      "visibility": 10000,
      "wind_speed": 5.35,
      "wind_deg": 178,
      "wind_gust": 14.09,
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "pop": 0
    },
    {
      "dt": 1642579200,
      "temp": 13.35,
      "feels_like": 12.96,
      "pressure": 1012,
      "humidity": 85,
      "dew_point": 10.88,
      "uvi": 0,
      "clouds": 7,
      "visibility": 10000,
      "wind_speed": 5.19,
      "wind_deg": 178,
      "wind_gust": 13.99,
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "pop": 0
    },
    {
      "dt": 1642582800,
      "temp": 13.3,
      "feels_like": 12.93,
      "pressure": 1012,
      "humidity": 86,
      "dew_point": 11.01,
      "uvi": 0,
      "clouds": 7,
      "visibility": 10000,
      "wind_speed": 4.88,
      "wind_deg": 179,
      "wind_gust": 12.8,
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "pop": 0
    },
    {
      "dt": 1642586400,
      "temp": 13.22,
      "feels_like": 12.9,
      "pressure": 1012,
      "humidity": 88,
      "dew_point": 11.28,
      "uvi": 0,
      "clouds": 8,
      "visibility": 10000,
      "wind_speed": 4.7,
      "wind_deg": 179,
      "wind_gust": 12.6,
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01n"}
      ],
      "pop": 0
    },
    {
      "dt": 1642590000,
      "temp": 13.07,
      "feels_like": 12.81,
      "pressure": 1011,
      "humidity": 91,
      "dew_point": 11.64,
      "uvi": 0,
      "clouds": 11,
      "visibility": 10000,
      "wind_speed": 4.52,
      "wind_deg": 179,
      "wind_gust": 11.95,
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642593600,
      "temp": 12.86,
      "feels_like": 12.63,
      "pressure": 1012,
      "humidity": 93,
      "dew_point": 11.76,
      "uvi": 0,
      "clouds": 15,
      "visibility": 10000,
      "wind_speed": 4.25,
      "wind_deg": 182,
      "wind_gust": 11.4,
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642597200,
      "temp": 13.21,
      "feels_like": 13.07,
      "pressure": 1012,
      "humidity": 95,
      "dew_point": 12.54,
      "uvi": 0,
      "clouds": 75,
      "visibility": 10000,
      "wind_speed": 4.44,
      "wind_deg": 184,
      "wind_gust": 12.92,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "pop": 0.08
    },
    {
      "dt": 1642600800,
      "temp": 14.32,
      "feels_like": 14.21,
      "pressure": 1012,
      "humidity": 92,
      "dew_point": 13.08,
      "uvi": 0.19,
      "clouds": 88,
      "visibility": 10000,
      "wind_speed": 4.46,
      "wind_deg": 190,
      "wind_gust": 11.84,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.09
    },
    {
      "dt": 1642604400,
      "temp": 15.7,
      "feels_like": 15.55,
      "pressure": 1013,
      "humidity": 85,
      "dew_point": 13.26,
      "uvi": 0.73,
      "clouds": 92,
      "visibility": 10000,
      "wind_speed": 4.77,
      "wind_deg": 208,
      "wind_gust": 10.49,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.09
    },
    {
      "dt": 1642608000,
      "temp": 16.38,
      "feels_like": 16.21,
      "pressure": 1013,
      "humidity": 82,
      "dew_point": 13.28,
      "uvi": 1.74,
      "clouds": 94,
      "visibility": 10000,
      "wind_speed": 4.67,
      "wind_deg": 215,
      "wind_gust": 9.59,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.08
    },
    {
      "dt": 1642611600,
      "temp": 17.21,
      "feels_like": 17,
      "pressure": 1013,
      "humidity": 77,
      "dew_point": 13.11,
      "uvi": 2.71,
      "clouds": 95,
      "visibility": 10000,
      "wind_speed": 4.56,
      "wind_deg": 219,
      "wind_gust": 8.58,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.08
    },
    {
      "dt": 1642615200,
      "temp": 19.25,
      "feels_like": 18.93,
      "pressure": 1013,
      "humidity": 65,
      "dew_point": 12.6,
      "uvi": 3.23,
      "clouds": 96,
      "visibility": 10000,
      "wind_speed": 5.02,
      "wind_deg": 231,
      "wind_gust": 8.8,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.05
    },
    {
      "dt": 1642618800,
      "temp": 20.91,
      "feels_like": 20.52,
      "pressure": 1012,
      "humidity": 56,
      "dew_point": 12.01,
      "uvi": 1.37,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 4.83,
      "wind_deg": 236,
      "wind_gust": 8.8,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.13
    },
    {
      "dt": 1642622400,
      "temp": 20.64,
      "feels_like": 20.25,
      "pressure": 1011,
      "humidity": 57,
      "dew_point": 11.82,
      "uvi": 1.04,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 4.88,
      "wind_deg": 251,
      "wind_gust": 9.01,
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "pop": 0.53,
      "rain": {"1h": 0.62}
    },
    {
      "dt": 1642626000,
      "temp": 20.44,
      "feels_like": 19.98,
      "pressure": 1012,
      "humidity": 55,
      "dew_point": 10.93,
      "uvi": 0.6,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 4.7,
      "wind_deg": 261,
      "wind_gust": 8.68,
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "pop": 0.61,
      "rain": {"1h": 0.23}
    },
    {
      "dt": 1642629600,
      "temp": 19.1,
      "feels_like": 18.48,
      "pressure": 1012,
      "humidity": 54,
      "dew_point": 9.48,
      "uvi": 0.46,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 4.22,
      "wind_deg": 295,
      "wind_gust": 6.98,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.64
    },
    {
      "dt": 1642633200,
      "temp": 16.84,
      "feels_like": 16.28,
      "pressure": 1013,
      "humidity": 65,
      "dew_point": 10.31,
      "uvi": 0,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 3.19,
      "wind_deg": 342,
      "wind_gust": 6.4,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0.61
    },
    {
      "dt": 1642636800,
      "temp": 14.38,
      "feels_like": 13.99,
      "pressure": 1015,
      "humidity": 81,
      "dew_point": 11.26,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 5.33,
      "wind_deg": 3,
      "wind_gust": 9.37,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0.61
    },
    {
      "dt": 1642640400,
      "temp": 9.89,
      "feels_like": 6.51,
      "pressure": 1018,
      "humidity": 82,
      "dew_point": 7.1,
      "uvi": 0,
      "clouds": 94,
      "visibility": 10000,
      "wind_speed": 8.08,
      "wind_deg": 16,
      "wind_gust": 12.37,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0.03
    },
    {
      "dt": 1642644000,
      "temp": 7.44,
      "feels_like": 3.44,
      "pressure": 1020,
      "humidity": 80,
      "dew_point": 4.28,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 7.66,
      "wind_deg": 20,
      "wind_gust": 13.04,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0.03
    },
    {
      "dt": 1642647600,
      "temp": 5.52,
      "feels_like": 0.9,
      "pressure": 1022,
      "humidity": 79,
      "dew_point": 2.21,
      "uvi": 0,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 7.83,
      "wind_deg": 26,
      "wind_gust": 14.04,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0.01
    },
    {
      "dt": 1642651200,
      "temp": 4.08,
      "feels_like": -0.8,
      "pressure": 1023,
      "humidity": 75,
      "dew_point": 0.2,
      "uvi": 0,
      "clouds": 98,
      "visibility": 10000,
      "wind_speed": 7.36,
      "wind_deg": 28,
      "wind_gust": 13.89,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642654800,
      "temp": 3.7,
      "feels_like": -1.13,
      "pressure": 1024,
      "humidity": 73,
      "dew_point": -0.71,
      "uvi": 0,
      "clouds": 99,
      "visibility": 10000,
      "wind_speed": 6.92,
      "wind_deg": 27,
      "wind_gust": 13.17,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642658400,
      "temp": 3.19,
      "feels_like": -1.74,
      "pressure": 1025,
      "humidity": 72,
      "dew_point": -1.28,
      "uvi": 0,
      "clouds": 99,
      "visibility": 10000,
      "wind_speed": 6.82,
      "wind_deg": 30,
      "wind_gust": 12.39,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642662000,
      "temp": 2.31,
      "feels_like": -2.81,
      "pressure": 1026,
      "humidity": 72,
      "dew_point": -2.11,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.67,
      "wind_deg": 28,
      "wind_gust": 11.92,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642665600,
      "temp": 1.54,
      "feels_like": -3.78,
      "pressure": 1026,
      "humidity": 69,
      "dew_point": -3.43,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.63,
      "wind_deg": 27,
      "wind_gust": 11.54,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642669200,
      "temp": 1.04,
      "feels_like": -4.4,
      "pressure": 1027,
      "humidity": 63,
      "dew_point": -5.13,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.59,
      "wind_deg": 23,
      "wind_gust": 11.31,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642672800,
      "temp": 0.58,
      "feels_like": -4.88,
      "pressure": 1027,
      "humidity": 58,
      "dew_point": -6.8,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.34,
      "wind_deg": 23,
      "wind_gust": 11.28,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642676400,
      "temp": 0.17,
      "feels_like": -5.38,
      "pressure": 1028,
      "humidity": 53,
      "dew_point": -8.08,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.3,
      "wind_deg": 22,
      "wind_gust": 11.29,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642680000,
      "temp": -0.11,
      "feels_like": -5.63,
      "pressure": 1029,
      "humidity": 51,
      "dew_point": -9,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.08,
      "wind_deg": 22,
      "wind_gust": 10.67,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642683600,
      "temp": -0.47,
      "feels_like": -5.97,
      "pressure": 1031,
      "humidity": 49,
      "dew_point": -9.9,
      "uvi": 0,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 5.85,
      "wind_deg": 23,
      "wind_gust": 9.98,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642687200,
      "temp": -0.85,
      "feels_like": -6.56,
      "pressure": 1031,
      "humidity": 46,
      "dew_point": -10.9,
      "uvi": 0.09,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.06,
      "wind_deg": 23,
      "wind_gust": 9.83,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642690800,
      "temp": -1.03,
      "feels_like": -6.89,
      "pressure": 1032,
      "humidity": 42,
      "dew_point": -12.15,
      "uvi": 0.34,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.26,
      "wind_deg": 28,
      "wind_gust": 9.52,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642694400,
      "temp": -0.38,
      "feels_like": -6.13,
      "pressure": 1032,
      "humidity": 38,
      "dew_point": -12.99,
      "uvi": 1.59,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.4,
      "wind_deg": 30,
      "wind_gust": 9.4,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642698000,
      "temp": 1.45,
      "feels_like": -3.73,
      "pressure": 1032,
      "humidity": 32,
      "dew_point": -13.44,
      "uvi": 2.45,
      "clouds": 100,
      "visibility": 10000,
      "wind_speed": 6.27,
      "wind_deg": 32,
      "wind_gust": 8.57,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642701600,
      "temp": 3.17,
      "feels_like": -1.26,
      "pressure": 1031,
      "humidity": 29,
      "dew_point": -13.04,
      "uvi": 2.92,
      "clouds": 95,
      "visibility": 10000,
      "wind_speed": 5.63,
      "wind_deg": 32,
      "wind_gust": 7.26,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642705200,
      "temp": 4.45,
      "feels_like": 0.56,
      "pressure": 1030,
      "humidity": 28,
      "dew_point": -12.48,
      "uvi": 2.98,
      "clouds": 95,
      "visibility": 10000,
      "wind_speed": 5.19,
      "wind_deg": 30,
      "wind_gust": 6.59,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642708800,
      "temp": 5.25,
      "feels_like": 1.73,
      "pressure": 1029,
      "humidity": 27,
      "dew_point": -12.06,
      "uvi": 2.27,
      "clouds": 85,
      "visibility": 10000,
      "wind_speed": 4.84,
      "wind_deg": 29,
      "wind_gust": 6.08,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642712400,
      "temp": 5.56,
      "feels_like": 2.23,
      "pressure": 1029,
      "humidity": 27,
      "dew_point": -11.84,
      "uvi": 1.29,
      "clouds": 81,
      "visibility": 10000,
      "wind_speed": 4.59,
      "wind_deg": 30,
      "wind_gust": 5.7,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642716000,
      "temp": 5.23,
      "feels_like": 1.71,
      "pressure": 1029,
      "humidity": 28,
      "dew_point": -11.76,
      "uvi": 0.47,
      "clouds": 86,
      "visibility": 10000,
      "wind_speed": 4.83,
      "wind_deg": 35,
      "wind_gust": 5.99,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642719600,
      "temp": 4.27,
      "feels_like": 0.79,
      "pressure": 1029,
      "humidity": 32,
      "dew_point": -10.73,
      "uvi": 0,
      "clouds": 88,
      "visibility": 10000,
      "wind_speed": 4.3,
      "wind_deg": 38,
      "wind_gust": 6.75,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642723200,
      "temp": 2.4,
      "feels_like": -1.23,
      "pressure": 1030,
      "humidity": 36,
      "dew_point": -11.23,
      "uvi": 0,
      "clouds": 89,
      "visibility": 10000,
      "wind_speed": 3.84,
      "wind_deg": 41,
      "wind_gust": 8.41,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642726800,
      "temp": 1.62,
      "feels_like": -2.34,
      "pressure": 1030,
      "humidity": 38,
      "dew_point": -11.16,
      "uvi": 0,
      "clouds": 86,
      "visibility": 10000,
      "wind_speed": 4.07,
      "wind_deg": 40,
      "wind_gust": 9.63,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642730400,
      "temp": 1.06,
      "feels_like": -3.09,
      "pressure": 1031,
      "humidity": 39,
      "dew_point": -11.24,
      "uvi": 0,
      "clouds": 93,
      "visibility": 10000,
      "wind_speed": 4.16,
      "wind_deg": 49,
      "wind_gust": 9.7,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642734000,
      "temp": 0.2,
      "feels_like": -4.43,
      "pressure": 1030,
      "humidity": 41,
      "dew_point": -11.54,
      "uvi": 0,
      "clouds": 95,
      "visibility": 10000,
      "wind_speed": 4.6,
      "wind_deg": 49,
      "wind_gust": 10.03,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642737600,
      "temp": -0.46,
      "feels_like": -5.12,
      "pressure": 1031,
      "humidity": 42,
      "dew_point": -11.7,
      "uvi": 0,
      "clouds": 96,
      "visibility": 10000,
      "wind_speed": 4.4,
      "wind_deg": 49,
      "wind_gust": 9.43,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642741200,
      "temp": -1.09,
      "feels_like": -5.47,
      "pressure": 1031,
      "humidity": 44,
      "dew_point": -11.74,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 3.8,
      "wind_deg": 54,
      "wind_gust": 8.42,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    },
    {
      "dt": 1642744800,
      "temp": -1.66,
      "feels_like": -5.95,
      "pressure": 1031,
      "humidity": 46,
      "dew_point": -11.65,
      "uvi": 0,
      "clouds": 97,
      "visibility": 10000,
      "wind_speed": 3.52,
      "wind_deg": 58,
      "wind_gust": 7.74,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "pop": 0
    }
  ],
  "daily": [
    {
      "dt": 1642615200,
      "sunrise": 1642598333,
      "sunset": 1642635274,
      "moonrise": 1642641480,
      "moonset": 1642603380,
      "moon_phase": 0.56,
      "temp": {
        "day": 19.25,
        "min": 3.7,
        "max": 20.91,
        "night": 3.7,
        "eve": 14.38,
        "morn": 12.86
      },
      "feels_like": {"day": 18.93, "night": -1.13, "eve": 13.99, "morn": 12.63},
      "pressure": 1013,
      "humidity": 65,
      "dew_point": 12.6,
      "wind_speed": 8.08,
      "wind_deg": 16,
      "wind_gust": 14.5,
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": 96,
      "pop": 0.64,
      "rain": 0.85,
      "uvi": 3.23
    },
    {
      "dt": 1642701600,
      "sunrise": 1642684712,
      "sunset": 1642721731,
      "moonrise": 1642731480,
      "moonset": 1642691880,
      "moon_phase": 0.59,
      "temp": {
        "day": 3.17,
        "min": -1.09,
        "max": 5.56,
        "night": -1.09,
        "eve": 2.4,
        "morn": -0.11
      },
      "feels_like": {"day": -1.26, "night": -5.47, "eve": -1.23, "morn": -5.63},
      "pressure": 1031,
      "humidity": 29,
      "dew_point": -13.04,
      "wind_speed": 6.82,
      "wind_deg": 30,
      "wind_gust": 12.39,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": 95,
      "pop": 0,
      "uvi": 2.98
    },
    {
      "dt": 1642788000,
      "sunrise": 1642771089,
      "sunset": 1642808189,
      "moonrise": 1642821540,
      "moonset": 1642780140,
      "moon_phase": 0.62,
      "temp": {
        "day": 3.58,
        "min": -4.11,
        "max": 6.06,
        "night": -0.99,
        "eve": 1.71,
        "morn": -3.97
      },
      "feels_like": {"day": 0.34, "night": -4.96, "eve": -1.25, "morn": -8.53},
      "pressure": 1031,
      "humidity": 28,
      "dew_point": -13.2,
      "wind_speed": 4.32,
      "wind_deg": 51,
      "wind_gust": 9.05,
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": 27,
      "pop": 0,
      "uvi": 2.71
    },
    {
      "dt": 1642874400,
      "sunrise": 1642857464,
      "sunset": 1642894647,
      "moonrise": 1642911540,
      "moonset": 1642868220,
      "moon_phase": 0.65,
      "temp": {
        "day": 6,
        "min": -4.67,
        "max": 8.36,
        "night": 2.08,
        "eve": 3.76,
        "morn": -4.67
      },
      "feels_like": {"day": 4.78, "night": -0.01, "eve": 3.76, "morn": -8.49},
      "pressure": 1032,
      "humidity": 32,
      "dew_point": -9.31,
      "wind_speed": 2.89,
      "wind_deg": 71,
      "wind_gust": 7.37,
      "weather": [
        {"id": 800, "main": "Clear", "description": "clear sky", "icon": "01d"}
      ],
      "clouds": 0,
      "pop": 0,
      "uvi": 2.92
    },
    {
      "dt": 1642960800,
      "sunrise": 1642943838,
      "sunset": 1642981106,
      "moonrise": 1643001660,
      "moonset": 1642956360,
      "moon_phase": 0.69,
      "temp": {
        "day": 10.47,
        "min": -0.01,
        "max": 12.78,
        "night": 5.9,
        "eve": 7.69,
        "morn": -0.01
      },
      "feels_like": {"day": 8.49, "night": 3.52, "eve": 5.98, "morn": -2.3},
      "pressure": 1025,
      "humidity": 35,
      "dew_point": -4.31,
      "wind_speed": 4.67,
      "wind_deg": 257,
      "wind_gust": 6.27,
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": 51,
      "pop": 0,
      "uvi": 3
    },
    {
      "dt": 1643047200,
      "sunrise": 1643030211,
      "sunset": 1643067564,
      "moonrise": 0,
      "moonset": 1643044500,
      "moon_phase": 0.72,
      "temp": {
        "day": 13.4,
        "min": 4.01,
        "max": 13.4,
        "night": 6.8,
        "eve": 7.64,
        "morn": 4.01
      },
      "feels_like": {"day": 11.84, "night": 4.53, "eve": 5.19, "morn": 2.29},
      "pressure": 1015,
      "humidity": 40,
      "dew_point": 0,
      "wind_speed": 4.71,
      "wind_deg": 203,
      "wind_gust": 9.28,
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": 100,
      "pop": 0.7,
      "rain": 0.44,
      "uvi": 3
    },
    {
      "dt": 1643133600,
      "sunrise": 1643116581,
      "sunset": 1643154023,
      "moonrise": 1643091900,
      "moonset": 1643132820,
      "moon_phase": 0.75,
      "temp": {
        "day": 6.64,
        "min": 4.48,
        "max": 8.45,
        "night": 4.61,
        "eve": 4.48,
        "morn": 7.5
      },
      "feels_like": {"day": 2.94, "night": 1.61, "eve": 1.62, "morn": 6.62},
      "pressure": 1019,
      "humidity": 87,
      "dew_point": 4.66,
      "wind_speed": 6.1,
      "wind_deg": 34,
      "wind_gust": 9.81,
      "weather": [
        {"id": 500, "main": "Rain", "description": "light rain", "icon": "10d"}
      ],
      "clouds": 98,
      "pop": 1,
      "rain": 6.04,
      "uvi": 3
    },
    {
      "dt": 1643220000,
      "sunrise": 1643202950,
      "sunset": 1643240482,
      "moonrise": 1643182320,
      "moonset": 1643221320,
      "moon_phase": 0.79,
      "temp": {
        "day": 2.92,
        "min": -0.36,
        "max": 6.73,
        "night": 4.66,
        "eve": 3.49,
        "morn": 0
      },
      "feels_like": {"day": -0.36, "night": 4.66, "eve": 2.27, "morn": -4.64},
      "pressure": 1028,
      "humidity": 51,
      "dew_point": -6.12,
      "wind_speed": 4.56,
      "wind_deg": 60,
      "wind_gust": 8.18,
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": 99,
      "pop": 0,
      "uvi": 3
    }
  ]
});
