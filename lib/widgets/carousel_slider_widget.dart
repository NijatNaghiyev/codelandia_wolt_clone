import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/carousel_slider.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          clipBehavior: Clip.hardEdge,
          aspectRatio: 16 / 9,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          viewportFraction: 1,
          height: 200,
        ),
        items: imageSliders,
      ),
    );
  }
}
