import 'package:flutter/material.dart';
import 'package:maknews/config/constant.dart';

import '../widgets/bottom_navigation.dart';

import 'home_page.dart';
import 'category_page.dart';
import 'search_page.dart';
import 'bookmark_page.dart';

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
          return const SearchPage();
        case 3:
          return const BookmarkPage();
        default:
          return const HomePage();
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
          height: 50.0,
          padding: const EdgeInsets.all(8),
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Item Home
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

              //Item Category
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

              //Item Search
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

              //Item Bookmarks
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
