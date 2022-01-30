import 'package:flutter/material.dart';

class DeviceHelpers {
  static const mobileWidthBreakpoint = 400;
  static const tabletWidthBreakpoint = 600;
  static const desktopWidthBreakpoint = 800;

  static double _getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isMobile(BuildContext context) {
    return _getWidth(context) < tabletWidthBreakpoint;
  }

  static bool isTablet(BuildContext context) {
    double width = _getWidth(context);
    return width >= tabletWidthBreakpoint && width < desktopWidthBreakpoint;
  }

  static bool isDesktop(BuildContext context) {
    return _getWidth(context) >= desktopWidthBreakpoint;
  }

  static bool isMobileOrTablet(BuildContext context) {
    return isMobile(context) || isTablet(context);
  }

  static bool checkPlatform(BuildContext context, TargetPlatform platform) {
    TargetPlatform _platform = Theme.of(context).platform;
    return _platform == platform;
  }
}
