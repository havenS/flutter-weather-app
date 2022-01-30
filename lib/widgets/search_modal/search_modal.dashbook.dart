import 'package:dashbook/dashbook.dart';

import 'package:weather_app/widgets/search_modal/search_modal.dart';

searchModalStory(Dashbook dashbook) {
  dashbook
      .storiesOf('Search modal')
      .decorator(CenterDecorator())
      .add('Default', (DashbookContext context) => const SearchModal());
}
