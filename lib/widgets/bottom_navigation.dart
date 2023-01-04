import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/constant.dart';

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
