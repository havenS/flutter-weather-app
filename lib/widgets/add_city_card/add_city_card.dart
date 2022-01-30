import 'package:flutter/material.dart';
import 'package:weather_app/widgets/city_card/city_card.dart';
import 'package:weather_app/widgets/search_modal/search_modal.dart';

class AddCityCard extends StatelessWidget {
  const AddCityCard({Key? key, required this.onPressed}) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => {
            showDialog(
                context: context,
                builder: (context) => const Material(child: SearchModal()))
          },
          child: Card(
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.grey, width: 1.0)),
            child: SizedBox(
              width: cityCardBaseWidth,
              height: cityCardBaseWidth * 1.3,
              child: const Center(
                child: Icon(Icons.add, size: 50, color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
