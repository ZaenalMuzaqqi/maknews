import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../config/constant.dart';

class CustomPlaceholder extends StatelessWidget {
  const CustomPlaceholder(
      {Key? key,
      this.height = 0,
      this.width = 0,
      this.borderRadius = BorderRadius.zero})
      : super(key: key);
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: backgroundColor,
      highlightColor: hintColor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
