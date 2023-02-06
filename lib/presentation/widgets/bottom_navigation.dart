import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constant.dart';
import '../bloc/cubit/page_cubit.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    Key? key,
    required this.icon,
    this.color = defaultColor,
    this.label = 'label menu',
    this.index = 0,
  }) : super(key: key);

  final Color? color;
  final String icon;
  final String? label;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().changePage(index!);
      },
      child: Container(
        color: Colors.transparent,
        height: 50.0,
        width: 75.74,
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
      ),
    );
  }
}
