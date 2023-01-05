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
            height: 30.0,
            width: 125.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            //HERO Card
            HeroCard(
              date: '03 JUN 2020 8:30',
              imageUrl:
                  'https://images.unsplash.com/photo-1591628013840-58dbb435be89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              title: 'Thousands gather in London for George Floyd protest',
              description:
                  'Star Wars actor John Boyega among those taking part in Hyde Park Black Lives Matter protest',
            ),

            //LIST REGULAR CARD

            ListCard(
              date: '03 JUN 2022 07:21',
              title: 'Texas Democrats plan to create a voter registration army',
              imageUrl:
                  'https://images.unsplash.com/photo-1616587226157-48e49175ee20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),

            ListCard(
              date: '03 JUN 2022 07:21',
              title:
                  'A restaurant owner, a football star: the people killed as protests spread',
              imageUrl:
                  'https://images.unsplash.com/photo-1618887798986-1fa86bd22d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
          ],
        ),
      ),
    );
  }
}
