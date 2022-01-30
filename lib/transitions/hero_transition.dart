import 'package:flutter/material.dart';

class HeroTransition extends PageRouteBuilder {
  final Widget page;
  final String routeName;

  HeroTransition({required this.page, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName), // set name here
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              Align(
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          transitionDuration: const Duration(milliseconds: 750),
        );
}
