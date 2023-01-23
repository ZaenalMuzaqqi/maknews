import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maknews/widgets/custom_placeholder.dart';

import '../config/constant.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    Key? key,
    this.date = '',
    this.imageUrl = '',
    this.title = '',
    this.description = '',
    this.onTap,
  }) : super(key: key);

  final String? imageUrl;
  final String? date;
  final String? title;
  final String? description;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl!,
            imageBuilder: (context, imageProvider) => Container(
              width: double.infinity,
              height: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => CustomPlaceholder(
              borderRadius: BorderRadius.circular(6),
              width: double.infinity,
              height: 180.0,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              date!.toUpperCase(),
              style: hintTextStyle.copyWith(
                fontSize: 12.0,
                fontWeight: medium,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title!,
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
          Text(
            description!,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: disabledColor.withOpacity(0.16),
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}

class HeroCardLoading extends StatelessWidget {
  const HeroCardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomPlaceholder(
          borderRadius: BorderRadius.circular(6),
          width: double.infinity,
          height: 180.0,
        ),
        Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: CustomPlaceholder(
              borderRadius: BorderRadius.circular(6),
              width: 100,
              height: 12,
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomPlaceholder(
              borderRadius: BorderRadius.circular(6),
              width: double.infinity,
              height: 56,
            )),
        CustomPlaceholder(
          borderRadius: BorderRadius.circular(6.0),
          width: double.infinity,
          height: 36.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(
            color: disabledColor.withOpacity(0.16),
            height: 1.5,
          ),
        )
      ],
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard(
      {Key? key,
      this.date = '',
      this.imageUrl = '',
      this.title = '',
      this.onTap})
      : super(key: key);

  final String? date;
  final String? title;
  final String? imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        bottom: 16.0,
                      ),
                      child: Text(
                        date!.toUpperCase(),
                        style: hintTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    Text(
                      title!,
                      style: blackTextStyle.copyWith(
                        fontSize: 14.0,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrl!,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 105.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  placeholder: (context, url) => CustomPlaceholder(
                    width: 105,
                    height: 80,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: Colors.black.withOpacity(0.08),
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ListCardLoading extends StatelessWidget {
  const ListCardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 16.0,
                    ),
                    child: CustomPlaceholder(
                      borderRadius: BorderRadius.circular(6.0),
                      height: 12.0,
                      width: double.infinity,
                    ),
                  ),
                  CustomPlaceholder(
                    borderRadius: BorderRadius.circular(6.0),
                    height: 40.0,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomPlaceholder(
                borderRadius: BorderRadius.circular(6.0),
                height: 80.0,
                width: 105.0,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(
            color: Colors.black.withOpacity(0.08),
            height: 1.0,
          ),
        ),
      ],
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({
    Key? key,
    required this.image,
    this.text = '',
    this.onTap,
  }) : super(key: key);
  final String image;
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.75),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Center(
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: whiteTextStyle.copyWith(
              fontSize: 20.0,
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
