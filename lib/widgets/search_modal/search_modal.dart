import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search_bar/search_bar.dart';

class SearchModal extends StatelessWidget {
  const SearchModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const Center(child: SearchBar()),
        ),
      ),
    ]);
  }
}
