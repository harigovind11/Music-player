import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/core/constants.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        kWidth5,
        LimitedBox(
          maxHeight: 50,
          maxWidth: 250,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Iconsax.search_normal_1,
                size: 25,
              ),
              prefixIconColor: kGrey,
              hintText: 'Search',
              hintMaxLines: 1,
              hintStyle: const TextStyle(
                color: kGrey,
              ),
              filled: true,
              fillColor: kWhite.withOpacity(.12),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: kTransparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: kTransparent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
