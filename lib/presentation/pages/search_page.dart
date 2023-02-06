import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../widgets/card.dart';
import '../widgets/search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: const SearchBar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Result Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: resultText(3, 'Indonesian'),
              ),

              //List Result

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

  Widget resultText(int countResult, String keyword) {
    return RichText(
      text: TextSpan(
        style: disabledTextStyle.copyWith(
          fontSize: 15.0,
          fontWeight: regular,
        ),
        children: <TextSpan>[
          TextSpan(text: '$countResult Result for '),
          TextSpan(
            text: keyword,
            style: defaultTextStyle.copyWith(
              fontSize: 15.0,
              fontWeight: bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
