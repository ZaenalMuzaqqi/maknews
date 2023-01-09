import 'package:flutter/material.dart';

import '../config/constant.dart';
import '../widgets/app_bar.dart';
import '../widgets/card.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: CustomAppBar(
          child: Text(
            'BOOKMARKS',
            style: blackTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: bold,
            ),
          ),
        ),
      ),

      //LIST BOOKMARK
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ListCard(
              date: '03 JUN 2022 07:21',
              title:
                  'A restaurant owner, a football star: the people killed as protests spread',
              imageUrl:
                  'https://images.unsplash.com/photo-1618887798986-1fa86bd22d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
            ListCard(
              date: '03 JUN 2022 07:21',
              title: 'Texas Democrats plan to create a voter registration army',
              imageUrl:
                  'https://images.unsplash.com/photo-1616587226157-48e49175ee20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
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
                  'Indonesia bans sale of syrup medicines after at least 99 child  death',
              imageUrl:
                  'https://images.unsplash.com/photo-1586015555751-63bb77f4322a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
            ListCard(
              date: '03 JUN 2022 07:21',
              title:
                  'Indonesians wait for UK farm jobs after paying deposits of up to £2,500',
              imageUrl:
                  'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
            ),
          ],
        ),
      ),
    );
  }
}
