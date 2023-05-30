import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:music_player/core/color_picker.dart';
import 'package:music_player/core/constants.dart';

import 'widgets/custom_app_buttons.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: kGradient,
      ),
      child: Scaffold(
        backgroundColor: kTransparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBarButtonsSearch(),
                  kHeight20,
                  const Text(
                    'Recent favourites',
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  kHeight20,
                  LimitedBox(
                    maxHeight: size.height,
                    maxWidth: size.width,
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              childAspectRatio: .7),
                      children: const [
                        GridViewWidget(
                          assetImage: 'assets/images/safari.jpg',
                          title: 'Safari',
                          description: 'The most popular',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/end.jpg',
                          title: 'In The End',
                          description: 'Always never',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/numb.jpg',
                          title: 'Numb',
                          description: 'Always never',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/baby.jpg',
                          title: 'Baby',
                          description: 'Always never',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/break.jpg',
                          title: 'Break My Heart',
                          description: 'Top hits',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/takeaway.jpg',
                          title: 'Takeaway',
                          description: 'Top hits',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/break.jpg',
                          title: 'Break My Heart',
                          description: 'Top hits',
                        ),
                        GridViewWidget(
                          assetImage: 'assets/images/takeaway.jpg',
                          title: 'Takeaway',
                          description: 'Top hits',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  final String assetImage;
  final String title;
  final String description;
  const GridViewWidget({
    super.key,
    required this.assetImage,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(
                  assetImage,
                ),
                fit: BoxFit.fill),
          ),
        ),
        kHeight10,
        Text(
          title,
          style: const TextStyle(
            color: kWhite,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight5,
        Text(
          description,
          style: const TextStyle(
            color: kGrey,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
