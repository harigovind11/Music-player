import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/core/constants.dart';

class CustomAppBarButtonsSearch extends StatelessWidget {
  const CustomAppBarButtonsSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            color: kWhite.withOpacity(.12),
          ),
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {},
            focusColor: kWhite.withOpacity(.12),
            icon: const HeroIcon(
              HeroIcons.bars3CenterLeft,
              color: kWhite,
              size: 25,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            color: kWhite.withOpacity(.12),
          ),
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {},
            focusColor: kWhite.withOpacity(.12),
            icon: const HeroIcon(
              HeroIcons.heart,
              color: kWhite,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
