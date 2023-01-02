import 'package:flutter/material.dart';

import '../pages/splash_page.dart';

class AppRoutes {
  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const SplashPage());

      default:
        return null;
    }
  }
}
