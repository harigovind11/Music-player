import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/core/constants.dart';

class TrendingNowListWidget extends StatelessWidget {
  const TrendingNowListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeight30,
        SongInfoWidget(
          assetName: 'assets/images/itsmylife.jpg',
          songName: 'It\'s My Life',
          singerName: 'Bon Jovi',
        ),
        kHeight30,
        SongInfoWidget(
            assetName: 'assets/images/loseurself.jpg',
            songName: 'Lose Yourself',
            singerName: 'Eminem'),
        kHeight30,
        SongInfoWidget(
            assetName: 'assets/images/mocking_bird.jpg',
            songName: 'Mockingbird',
            singerName: 'Eminem'),
      ],
    );
  }
}

class SongInfoWidget extends StatelessWidget {
  final String assetName;
  final String songName;
  final String singerName;
  const SongInfoWidget({
    super.key,
    required this.assetName,
    required this.songName,
    required this.singerName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    assetName,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          kWidth20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                songName,
                style: const TextStyle(
                  color: kWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight5,
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 10,
                    color: kGrey,
                  ),
                  kWidth5,
                  Text(
                    singerName,
                    style: const TextStyle(
                      color: kGrey,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const HeroIcon(HeroIcons.heart),
            color: kWhite,
          )
        ],
      ),
    );
  }
}
