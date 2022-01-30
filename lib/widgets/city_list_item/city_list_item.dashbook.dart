import 'package:dashbook/dashbook.dart';
import 'package:weather_app/models/city.dart';

import 'city_list_item.dart';

cityListItemStory(Dashbook dashbook) {
  dashbook.storiesOf('City list item').add(
      'default',
      (DashbookContext context) => CityListItem(
            city: City('Bordeaux', '44.7577118', '-0.7345162'),
          ));
}
