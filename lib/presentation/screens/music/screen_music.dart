import 'package:flutter/material.dart';
import 'package:music_player/core/color_picker.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: kGradient,
      ),
      child: Scaffold(
        backgroundColor: kTransparent,
        body: SafeArea(
          child: Center(
            child: Text('Music'),
          ),
        ),
      ),
    );
  }
}
