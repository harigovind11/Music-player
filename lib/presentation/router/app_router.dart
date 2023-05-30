import 'package:flutter/material.dart';
import 'package:music_player/presentation/screens/main_page/screen_main_page.dart';
import 'package:music_player/presentation/screens/music/screen_music.dart';
import 'package:music_player/presentation/screens/profile/screen_profile.dart';

import '../screens/home/screen_home.dart';
import '../screens/search/screen_search.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => ScreenMainPage(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      case '/search':
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );
      case '/music':
        return MaterialPageRoute(
          builder: (_) => const MusicScreen(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      default:
        return null;
    }
  }
}
