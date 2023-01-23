import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maknews/config/constant.dart';

import '../widgets/app_bar.dart';
import '../widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: CustomAppBar(
          child: SvgPicture.asset(
            logoMaknews,
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          child: Column(
            children: [
              //HERO Card
              HeroCard(
                date: '03 JUN 2020 8:30',
                imageUrl: photoList[0],
                title: titleList[0],
                description: descriptionList[0],
              ),

              //LIST REGULAR CARD

              ListCard(
                date: '03 JUN 2022 07:21',
                title: titleList[1],
                onTap: () {
                  Navigator.pushNamed(context, '/article');
                },
                imageUrl: photoList[1],
              ),

              ListCard(
                date: '03 JUN 2022 07:21',
                title: titleList[2],
                onTap: () {
                  Navigator.pushNamed(context, '/article');
                },
                imageUrl: photoList[2],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
