import 'package:flutter/material.dart';
import 'package:maknews/config/constant.dart';

import '../widgets/app_bar.dart';
import '../widgets/card.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: CustomAppBar(
          child: Text(
            'CATEGORIES',
            style: blackTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 120,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: categoryList.length,
            itemBuilder: (BuildContext ctx, index) {
              return CardImage(
                onTap: () {
                  Navigator.pushNamed(context, '/category_detail_page');
                },
                image: imageList[index],
                text: categoryList[index],
              );
            }),
      ),
    );
  }
}
