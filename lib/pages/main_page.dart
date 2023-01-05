import 'package:flutter/material.dart';
import 'package:maknews/config/constant.dart';
import 'package:maknews/pages/category_page.dart';
import 'package:maknews/pages/home_page.dart';

import '../widgets/bottom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget buildPage(currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const CategoryPage();
        case 2:
          return Container(color: Colors.blue);
        case 3:
          return Container(color: Colors.indigo);
        default:
          return Container(color: Colors.purple);
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: buildPage(currentIndex),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 54.0,
          padding: const EdgeInsets.all(8),
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(
                color: defaultColor,
                icon: iconHome,
                label: 'Home',
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
              ),
              NavigationItem(
                color: hintColor,
                icon: iconCategoryDisabled,
                label: 'Categories',
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
              ),
              NavigationItem(
                color: hintColor,
                icon: iconSearchDisabled,
                label: 'Search',
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
              ),
              NavigationItem(
                color: hintColor,
                icon: iconBookmarkDisabled,
                label: 'Bookmarks',
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
