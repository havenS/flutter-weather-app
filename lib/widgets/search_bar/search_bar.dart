import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/services/locator.dart';
import 'package:weather_app/providers/search_form.dart';

import 'search_results.dart';
import 'search_input.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchForm _searchForm = locator<SearchForm>();

    return ChangeNotifierProvider<SearchForm>(
      create: (_) => _searchForm,
      builder: (context, _) => Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchInput(searchForm: _searchForm),
            SearchResults(
                searchResults: context.watch<SearchForm>().searchResults)
          ],
        ),
      ),
    );
  }
}
