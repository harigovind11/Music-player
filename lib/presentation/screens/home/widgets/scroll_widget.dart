import 'dart:typed_data';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heroicons/heroicons.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/core/constants.dart';

// ignore: must_be_immutable
class ScrollingWidget extends StatelessWidget {
  final String assetImage;
  final String songName;
  final String singerName;
  final Color bgcolor;
  final VoidCallback onPressed;
  ScrollingWidget({
    super.key,
    required this.assetImage,
    required this.songName,
    required this.singerName,
    required this.bgcolor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(
              assetImage,
            ),
            fit: BoxFit.fill),
      ),
      width: 220,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 2,
          right: 10,
          left: 10,
          bottom: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  //! #dot button
                },
                icon: const HeroIcon(
                  HeroIcons.ellipsisHorizontal,
                  color: kWhite,
                ),
              ),
            ),
            Container(
              width: 190,
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.circular(20),
              ),
              // Song details
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        songName,
                        style: const TextStyle(
                          color: kWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            '♫',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          kWidth5,
                          Text(
                            singerName,
                            style: const TextStyle(
                              color: kOffWhite,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // play button
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: kWhite,
                    child: IconButton(
                      color: kBlack,
                      onPressed: onPressed,
                      icon: const HeroIcon(
                        HeroIcons.play,
                        style: HeroIconStyle.solid,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
