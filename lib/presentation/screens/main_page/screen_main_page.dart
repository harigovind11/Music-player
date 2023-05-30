import 'package:flutter/material.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/presentation/screens/home/screen_home.dart';
import 'package:music_player/presentation/screens/music/screen_music.dart';
import 'package:music_player/presentation/screens/profile/screen_profile.dart';
import 'package:music_player/presentation/screens/search/screen_search.dart';
import 'widgets/bottom_navbar.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({
    super.key,
  });

  final _pages = [
    HomeScreen(),
    SearchScreen(),
    MusicScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
              child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int _index, _) {
              return _pages[_index];
            },
          )),
          bottomNavigationBar: Theme(
              data: ThemeData(
                splashColor: kTransparent,
                highlightColor: kTransparent,
              ),
              child: const BottomNavigationBarWidget()),
        ),
      ],
    );
  }
}
