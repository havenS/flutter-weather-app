import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'screens/home/home.dart';
import 'services/locator.dart';
import 'providers/app_data.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => locator<AppData>()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Weather App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.indigo.shade50,
            textTheme: GoogleFonts.dongleTextTheme(
              Theme.of(context)
                  .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
            ),
          ),
          routes: {
            HomeScreen.routeName: (context) => const HomeScreen(),
          },
        ));
  }
}
