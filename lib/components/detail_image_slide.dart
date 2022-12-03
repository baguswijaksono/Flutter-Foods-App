import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class image_slide extends StatelessWidget {
  const image_slide({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
          indicatorColor: Colors.blue,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'images/saute.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/grill.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/steam.jpg',
              fit: BoxFit.cover,
            ),
          ],
        );
  }
}