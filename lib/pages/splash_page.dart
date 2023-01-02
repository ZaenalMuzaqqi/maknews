import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 48,
        width: 200,
        child: SvgPicture.asset(
          'assets/icons/logo.svg',
          semanticsLabel: 'Logo MakNews',
        ),
      )),
    );
  }
}
