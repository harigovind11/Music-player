import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:music_player/presentation/screens/music/screen_music.dart';
import 'package:music_player/presentation/screens/profile/screen_profile.dart';
import 'package:music_player/presentation/screens/search/screen_search.dart';
import 'package:music_player/core/color_picker.dart';
import '../../home/screen_home.dart';
import 'package:iconsax/iconsax.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext context, int newIndex, Widget? _) {
          return FloatingNavBar(
            resizeToAvoidBottomInset: false,
            color: kWhite.withOpacity(.12),
            selectedIconColor: kWhite,
            unselectedIconColor: kGrey,
            items: [
              FloatingNavBarItem(
                iconData: Iconsax.home_2,
                page: HomeScreen(),
                title: 'Home',
              ),
              FloatingNavBarItem(
                iconData: Iconsax.search_normal_1,
                page: SearchScreen(),
                title: 'Search',
              ),
              FloatingNavBarItem(
                iconData: Iconsax.music4,
                page: MusicScreen(),
                title: 'Music',
              ),
              FloatingNavBarItem(
                iconData: Iconsax.user,
                page: ProfileScreen(),
                title: 'Profile',
              ),
            ],
            horizontalPadding: 10.0,
            hapticFeedback: true,
            showTitle: false,
          );
        });
  }
}
