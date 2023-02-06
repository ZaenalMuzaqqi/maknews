import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maknews/config/constant.dart';
import 'package:maknews/presentation/bloc/cubit/page_cubit.dart';

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

    Widget customNavigation(BuildContext context) {
      return Container(
        height: 50.0,
        padding: const EdgeInsets.all(8),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Item Home
            NavigationItem(
              color: context.watch<PageCubit>().state == 0
                  ? defaultColor
                  : disabledColor,
              icon: context.watch<PageCubit>().state == 0
                  ? iconHome
                  : iconHomeDisabled,
              label: 'Home',
              index: 0,
            ),

            //Item Category
            NavigationItem(
              color: context.watch<PageCubit>().state == 1
                  ? defaultColor
                  : disabledColor,
              icon: context.watch<PageCubit>().state == 1
                  ? iconCategory
                  : iconCategoryDisabled,
              label: 'Categories',
              index: 1,
            ),

            //Item Search
            NavigationItem(
              color: context.watch<PageCubit>().state == 2
                  ? defaultColor
                  : disabledColor,
              icon: context.watch<PageCubit>().state == 2
                  ? iconSearch
                  : iconSearchDisabled,
              label: 'Search',
              index: 2,
            ),

            //Item Bookmarks
            NavigationItem(
              color: context.watch<PageCubit>().state == 3
                  ? defaultColor
                  : disabledColor,
              icon: context.watch<PageCubit>().state == 3
                  ? iconBookmark
                  : iconBookmarkDisabled,
              label: 'Bookmarks',
              index: 3,
            ),
          ],
        ),
      );
    }

    return BlocProvider(
      create: (context) => PageCubit(),
      child: BlocBuilder<PageCubit, int>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: backgroundColor,
            body: Container(
              color: Colors.white,
              child: SafeArea(
                child: buildPage(state),
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: customNavigation(context),
            ),
          );
        },
      ),
    );
  }
}
