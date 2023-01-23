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
            child: categoryLabel('GENERAL'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //List Category

              ListCard(
                date: '03 JUN 2022 07:21',
                title: titleList[0],
                onTap: () {
                  Navigator.pushNamed(context, '/article');
                },
                imageUrl: photoList[0],
              ),
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

  RichText categoryLabel(String category) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'CATEGORY : ',
          style: blackTextStyle.copyWith(
            fontSize: 16.0,
            fontWeight: bold,
          ),
        ),
        TextSpan(
          text: category.toString(),
          style: defaultTextStyle.copyWith(
            fontSize: 16.0,
            fontWeight: bold,
          ),
        ),
      ]),
    );
  }
}
