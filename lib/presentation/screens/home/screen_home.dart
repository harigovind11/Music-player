import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/core/constants.dart';
import 'package:music_player/presentation/screens/home/widgets/custom_app_bar.dart';

import 'widgets/scroll_widget.dart';
import 'widgets/tabs/electro_list.dart';
import 'widgets/tabs/hiphop_list.dart';
import 'widgets/tabs/jazz_list.dart';
import 'widgets/tabs/rock_list.dart';
import 'widgets/tabs/trending_now_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //songs imports
    final songOne = AssetsAudioPlayer();
    songOne.open(
      Audio("assets/audios/The_Dark_Side.mp3"),
      autoStart: false,
    );
    final songTwo = AssetsAudioPlayer();
    songTwo.open(
      Audio("assets/audios/Thought_Contagion.mp3"),
      autoStart: false,
    );
    final songThree = AssetsAudioPlayer();
    songThree.open(
      Audio("assets/audios/Its_My_Life.mp3"),
      autoStart: false,
    );
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: kGradient,
      ),
      child: Scaffold(
        backgroundColor: kTransparent,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBarHome(),
                  kHeight20,
                  const Text(
                    'Trending right now',
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight20,
                  // Horizontal scroll widget
                  LimitedBox(
                    maxHeight: 170,
                    maxWidth: size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ScrollingWidget(
                          assetImage: 'assets/images/darkside.jpg',
                          songName: 'The Dark Side',
                          singerName: 'Muse - Simulation Theory',
                          bgcolor: kBlueShade.withOpacity(.8),
                          onPressed: () async {
                            songOne.playOrPause();
                          },
                        ),
                        kWidth10,
                        ScrollingWidget(
                          assetImage: 'assets/images/thought.jpg',
                          songName: 'Thought Contagion',
                          singerName: 'Muse - Simulation Theory',
                          bgcolor: kVioletShade.withOpacity(.8),
                          onPressed: () {
                            songTwo.playOrPause();
                          },
                        ),
                        ScrollingWidget(
                          assetImage: 'assets/images/itsmylife.jpg',
                          songName: 'It\'s My Life',
                          singerName: 'Bon jovi',
                          bgcolor: kVioletShade.withOpacity(.8),
                          onPressed: () {
                            songThree.playOrPause();
                          },
                        ),
                      ],
                    ),
                  ),
                  kHeight30,
                  // Tab bar
                  DefaultTabController(
                    length: 5,
                    child: Column(
                      children: [
                        LimitedBox(
                          maxHeight: 35,
                          child: TabBar(
                            isScrollable: true,
                            indicator: BoxDecoration(
                              color: kBlueShade.withOpacity(.8),
                              borderRadius: kRadius10,
                            ),
                            tabs: const [
                              Tab(text: 'Trending right now'),
                              Tab(text: 'Rock'),
                              Tab(text: 'Hip Hop'),
                              Tab(text: 'Electro'),
                              Tab(text: 'Jazz'),
                            ],
                          ),
                        ),
                        Container(
                          height: 500,
                          width: double.infinity,
                          child: TabBarView(children: [
                            _buildTrendingNow(),
                            _buildRock(),
                            _buildHiphop(),
                            _buildElectro(),
                            _buildJazz(),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTrendingNow() {
    return TrendingNowListWidget();
  }

  Widget _buildRock() {
    return RockListWidget();
  }

  Widget _buildHiphop() {
    return HipHopListWidget();
  }

  Widget _buildElectro() {
    return ElectroListWidget();
  }

  Widget _buildJazz() {
    return JazzListWidget();
  }
}
