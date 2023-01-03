import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maknews/config/constant.dart';

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
          return Container(color: Colors.green);
        case 1:
          return Container(color: Colors.teal);
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
      body: buildPage(currentIndex),
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

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    Key? key,
    required this.icon,
    this.color = defaultColor,
    this.label = 'label menu',
    this.onTap,
  }) : super(key: key);

  final Color? color;
  final String icon;
  final String? label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            icon,
            height: 20.0,
            width: 20.0,
          ),
          Text(
            label!,
            style: TextStyle(
              color: color,
              fontSize: 12.0,
            ),
          )
        ],
      ),
    );
  }
}
