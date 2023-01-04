import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../config/constant.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    Key? key,
    this.date = '',
    this.imageUrl = '',
    this.title = '',
    this.description = '',
  }) : super(key: key);

  final String? imageUrl;
  final String? date;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          placeholder: (context, url) => const CircularProgressIndicator(),
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
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(
            color: disabledColor,
            height: 1.0,
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
                        style: yellowTextStyle.copyWith(
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
              CachedNetworkImage(
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
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: disabledColor,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
