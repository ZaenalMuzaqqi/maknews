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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //List Bookmark

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
              ListCard(
                date: '03 JUN 2022 07:21',
                title: titleList[3],
                imageUrl: photoList[3],
              ),
              ListCard(
                date: '03 JUN 2022 07:21',
                title: titleList[4],
                imageUrl: photoList[4],
              ),
              ListCard(
                date: '03 JUN 2022 07:21',
                title: titleList[5],
                imageUrl: photoList[5],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
