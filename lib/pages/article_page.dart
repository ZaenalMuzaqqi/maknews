import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maknews/widgets/custom_placeholder.dart';

import '../config/constant.dart';
import '../widgets/app_bar.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).viewPadding.top;
    return Stack(
      children: [
        backgroundImage(height),
        article(context),
        floatButton(),
      ],
    );
  }

  Widget backgroundImage(double height) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 220.0 + height,
          color: Colors.indigo,
          child: CachedNetworkImage(
            imageUrl: photoList[0],
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => CustomPlaceholder(
              borderRadius: BorderRadius.zero,
              width: double.infinity,
              height: 220.0 + height,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
          ),
        )
      ],
    );
  }

  Widget article(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: SafeArea(
          child: CustomAppBar(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    iconArrowBack,
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Back',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16.0,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 176.0),
          padding: const EdgeInsets.all(16.0),
          child: newsContent(),
        ),
      ),
    );
  }

  Widget newsContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: categoryList[0].toUpperCase(),
              style: defaultTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: heavy,
              ),
            ),
            TextSpan(
              text: ' 03 JUN 2020 8:30',
              style: hintTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: regular,
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
          child: Text(
            titleList[0],
            style: blackTextStyle.copyWith(
              fontSize: 24.0,
              fontWeight: bold,
            ),
          ),
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: disabledColor,
              radius: 16.0,
            ), //
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Aamna Mohdin',
                    style: blackTextStyle.copyWith(
                      fontSize: 14.0,
                      fontWeight: bold,
                    ),
                  ),
                  TextSpan(
                    text: ' in ',
                    style: hintTextStyle.copyWith(
                      fontSize: 14.0,
                      fontWeight: regular,
                    ),
                  ),
                  TextSpan(
                    text: 'The Guardian',
                    style: defaultTextStyle.copyWith(
                      fontSize: 14.0,
                      fontWeight: regular,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(
            color: disabledColor.withOpacity(0.5),
            height: 1,
          ),
        ),
        Text(
          descriptionList[1] + '\n\n' + descriptionList[1],
          style: blackTextStyle.copyWith(
            fontSize: 15.0,
            fontWeight: regular,
          ),
        ),
      ],
    );
  }

  Widget floatButton() {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 24),
          height: 48,
          width: 120.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: const Color(0xFF7F72D2).withOpacity(0.16),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconBookmark),
              const SizedBox(
                width: 32,
              ),
              SvgPicture.asset(iconShare),
            ],
          ),
        ),
      ),
    );
  }
}
