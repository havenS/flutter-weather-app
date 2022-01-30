import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/app_data.dart';
import 'package:weather_app/services/locator.dart';

class DataProvider extends StatelessWidget {
  const DataProvider({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => locator<AppData>()),
    ], child: child);
  }
}
