import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/helpers/device.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/widgets/city_name_container/city_name_container.dart';

double cityCardBaseWidth = 150;

class CityCard extends StatelessWidget {
  const CityCard(
      {Key? key,
      required this.city,
      this.isActive,
      required this.onPressed,
      this.onDelete})
      : super(key: key);

  final City city;
  final bool? isActive;
  final Function()? onPressed;
  final Function()? onDelete;

  void _handleOnDelete() {
    if (onDelete == null) {
      return;
    }

    onDelete!();
  }

  @override
  Widget build(BuildContext context) {
    double width = isActive ?? false ? 180 : cityCardBaseWidth;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Stack(
        children: [
          GestureDetector(
            onTap: onPressed,
            onLongPress: _handleOnDelete,
            child: Card(
              borderOnForeground: true,
              clipBehavior: Clip.hardEdge,
              elevation: isActive ?? false ? 4 : 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Container(
                width: width,
                height: width * 1.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        image: NetworkImage(
                            'https://maps.geoapify.com/v1/staticmap?style=toner-grey&width=400&height=800&center=lonlat:${city.longitude},${city.latitude}&zoom=12&apiKey=${dotenv.get('GEOAPIFY_API_KEY')}'))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CityNameContainer(
                      cityName: city.name,
                      child: Text(
                        city.name,
                        style: TextStyle(
                            color: isActive ?? false
                                ? Colors.black
                                : Colors.black54,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!DeviceHelpers.isMobileOrTablet(context))
            Positioned(
                top: 20,
                right: 20,
                child: IconButton(
                    color: Colors.red,
                    icon: const Icon(Icons.delete),
                    onPressed: _handleOnDelete)),
        ],
      ),
    );
  }
}
