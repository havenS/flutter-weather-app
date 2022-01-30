# Flutter Weather App
Weather app available for web, iOS, Android and MacOS

### iOS
![Simulator Screen Shot - iPhone 13 - 2022-01-30 at 08 11 01](https://user-images.githubusercontent.com/4668999/151691885-239829d1-b8be-42dd-9681-c19259e7e425.png)

### Android
![Screenshot_20220130_080651](https://user-images.githubusercontent.com/4668999/151691898-6eaf6223-fe59-4839-9aa2-3150fbe8c043.png)

### Web
<img width="1716" alt="Capture d’écran 2022-01-30 à 08 30 17" src="https://user-images.githubusercontent.com/4668999/151691907-c8c21c5f-abf3-407f-9b36-f143f3ad475f.png">

### MacOs
<img width="1290" alt="Capture d’écran 2022-01-30 à 08 25 28" src="https://user-images.githubusercontent.com/4668999/151691905-e859a483-fa93-4e67-a720-d25da31d4fc3.png">

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
