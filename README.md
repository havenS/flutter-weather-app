# Flutter Weather App

Weather app available for web, iOS, Android and MacOS

## Get started
- Copy **.env.example** to **.env**
- Register an account on api.openweathermap.org then add your api key in the env file in `WEATHER_API_KEY`
- Register an account on rapidapi.com 
- Subscribe to `forward-reverse-geocoding` then add your api key in the env file in `GEOCODING_API_KEY`
- Register an account to geoapify.com then add your api key in the env file in `GEOAPIFY_API_KEY`


## Run
### App
```
$ flutter run lib/main.dart -d [macos|chrome|ios|iphone|...]
```

### Dashbook (Storybook like)
```
$ flutter run lib/main_dashbook.dart -d [macos|chrome|ios|iphone|...]
```

## Platform dependent import
Exemple of target platform conditioned import:
> **lib/widgets/details_header/details_header.dashbook.dart**

## Custom run scripts 
Please check VS Code Execute and Debug tab to check available runners