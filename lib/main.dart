import 'package:flutter/material.dart';
import 'package:maknews/config/app_route.dart';
import 'package:maknews/config/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SFPDisplay',
        primaryColor: defaultColor,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
