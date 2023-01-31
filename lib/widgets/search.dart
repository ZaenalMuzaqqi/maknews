import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    this.controller,
    this.hintText = 'Search',
  }) : super(key: key);
  final TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: defaultColor,
      decoration: InputDecoration(
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide.none,
          ),
          hintStyle:
              disabledTextStyle.copyWith(fontSize: 15.0, fontWeight: regular),
          hintText: hintText,
          fillColor: backgroundColor,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
            child: SvgPicture.asset(
              iconSearchWidget,
            ),
          )),
    );
  }
}
