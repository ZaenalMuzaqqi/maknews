import 'package:flutter/material.dart';

import '../config/constant.dart';
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Result Text
            RichText(
              text: TextSpan(
                style: hintTextStyle.copyWith(
                  fontSize: 15.0,
                  fontWeight: regular,
                ),
                children: <TextSpan>[
                  const TextSpan(text: '3 Result for '),
                  TextSpan(
                    text: 'Indonesia',
                    style: defaultTextStyle.copyWith(
                        fontSize: 15.0,
                        fontWeight: bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),

            //List Result

            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ListCard(
                date: '03 JUN 2022 07:21',
                title:
                    'Indonesia puts 100-island archipelago up for auction, sparking',
                imageUrl:
                    'https://images.unsplash.com/photo-1544644181-1484b3fdfc62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ListCard(
                date: '03 JUN 2022 07:21',
                title:
                    'Indonesia bans sale of syrup medicines after at least 99 child  death',
                imageUrl:
                    'https://images.unsplash.com/photo-1586015555751-63bb77f4322a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ListCard(
                date: '03 JUN 2022 07:21',
                title:
                    'Indonesians wait for UK farm jobs after paying deposits of up to £2,500',
                imageUrl:
                    'https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
