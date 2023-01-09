import 'package:flutter/material.dart';

import '../config/constant.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';

class CategoryDetailPage extends StatefulWidget {
  const CategoryDetailPage({super.key});

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: SafeArea(
          child: CustomAppBar(
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'CATEGORY : ',
                  style: blackTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: bold,
                  ),
                ),
                TextSpan(
                  text: 'General',
                  style: defaultTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: bold,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ListCard(
              date: '03 JUN 2022 07:21',
              title:
                  'Indonesia puts 100-island archipelago up for auction, sparking',
              imageUrl:
                  'https://images.unsplash.com/photo-1544644181-1484b3fdfc62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
            ListCard(
              date: '03 JUN 2022 07:21',
              title:
                  'Indonesians wait for UK farm jobs after paying deposits of up to £2,500',
              imageUrl:
                  'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
            ListCard(
              date: '03 JUN 2022 07:21',
              title:
                  'Indonesia bans sale of syrup medicines after at least 99 child  death',
              imageUrl:
                  'https://images.unsplash.com/photo-1586015555751-63bb77f4322a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
            ListCard(
              date: '03 JUN 2022 07:21',
              title: 'Texas Democrats plan to create a voter registration army',
              imageUrl:
                  'https://images.unsplash.com/photo-1616587226157-48e49175ee20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
            ListCard(
              date: '03 JUN 2022 07:21',
              title: 'Thousands gather in London for George Floyd protest',
              imageUrl:
                  'https://images.unsplash.com/photo-1591628013840-58dbb435be89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
          ],
        ),
      ),
    );
  }
}
