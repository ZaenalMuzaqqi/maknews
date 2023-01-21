import 'package:flutter/material.dart';
import 'package:maknews/pages/article_page.dart';

import '../pages/category_detail_page.dart';
import '../pages/main_page.dart';
import '../pages/splash_page.dart';

class AppRoutes {
  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const SplashPage());
      case '/main_page':
        return _materialRoute(const MainPage());
      case '/category_detail_page':
        return _materialRoute(const CategoryDetailPage());
      case '/article':
        return _materialRoute(const ArticlePage());

      default:
        return null;
    }
  }
}
