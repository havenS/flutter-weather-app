import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/providers/search_form.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key, required this.searchForm}) : super(key: key);

  final SearchForm searchForm;

  @override
  Widget build(BuildContext context) {
    Timer? _debounce;

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextField(
              controller: TextEditingController(
                text: searchForm.value,
              ),
              onChanged: (value) {
                if (_debounce?.isActive ?? false) _debounce!.cancel();
                _debounce = Timer(const Duration(milliseconds: 1000), () {
                  if (value.isNotEmpty) {
                    searchForm.setValue(value);
                  }
                });
              },
              decoration: const InputDecoration(
                label: Text(
                  'Rechercher une ville',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              style: const TextStyle(fontSize: 40)),
        ),
        // const SizedBox(
        //   width: 10,
        // ),
        // SizedBox(
        //   width: 80,
        //   height: 50,
        //   child: ElevatedButton(
        //       onPressed: () => _searchForm.getCityByLocation(),
        //       child: const Icon(Icons.my_location)),
        // ),
      ],
    );
  }
}
