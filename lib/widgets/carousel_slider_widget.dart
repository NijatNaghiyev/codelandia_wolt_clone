import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/carousel_slider.dart';

int activeSliderIndex = 0;

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              clipBehavior: Clip.hardEdge,
              aspectRatio: 16 / 9,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              viewportFraction: 1,
              height: 200,
              onPageChanged: (index, reason) {
                setState(() {
                  activeSliderIndex = index;
                });
              },
            ),
            items: imageSliders,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: AnimatedSmoothIndicator(
              curve: Curves.bounceInOut,
              activeIndex: activeSliderIndex,
              count: imageSliders.length,
              effect: const ScrollingDotsEffect(
                activeDotScale: 1,
                maxVisibleDots: 7,
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
