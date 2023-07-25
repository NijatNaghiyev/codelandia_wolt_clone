import 'package:codelandia_wolt_clone/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../methods/methods.dart';
import '../widgets/carousel_slider_widget.dart';
import '../widgets/food_categories.dart';
import '../widgets/restaurants_widget.dart';
import '../widgets/wolt_ad.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPositionOffset = 0.0;

  void _scrollListener() {
    setState(() {
      _scrollPositionOffset =
          _scrollController.position.pixels; //? _scrollController.offset
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _scrollPositionOffset <= 0.0
          ? buildAppBarFirst()
          : buildAppBarSecond(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const FoodCategories(),
              const SizedBox(height: 10),
              const CarouselSliderWidget(),
              const SizedBox(height: 10),
              Column(
                children: [
                  buildTextAndButton(text: '0 AZN delivery fee with Wolt+'),
                  SizedBox(
                    height: 210,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: List.filled(
                        10,
                        const CardWidget(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMjjoCccOuhKmneVWt2ETy60PdDd7iu1HhcQ&usqp=CAU',
                          price: 1.7,
                          textFirst: 'Sushi Khan',
                          textSecond: 'Sushi, premium rolls!',
                          point: 9.0,
                          time: '15-20',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const WoltAd(),
              Column(
                children: [
                  buildTextAndButton(text: 'Fastest delivery'),
                  SizedBox(
                    height: 210,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: List.filled(
                        10,
                        const CardWidget(
                          imageUrl:
                              'https://imageproxy.wolt.com/venue/64a7c9ffed3eb63eb5d4f3ca/be4d61c4-1c9e-11ee-95d3-326a4541e6ae_afa14c20_1335_11ee_b97a_1ec35802104d_fryday_1.png',
                          price: 1.3,
                          textFirst: 'Fryday Khalglar',
                          textSecond: 'Live for Fryday Burger!',
                          point: 9.1,
                          time: '30-40',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  buildTextAndButton(text: 'Popular brands'),
                  const RestaurantsWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBarSecond() {
    return AppBar(
      scrolledUnderElevation: 0,
      elevation: 0,
      title: const Column(
        children: [
          Text(
            'Discovery',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Ev, Qara Qarayev 59, mənzil 8',
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      centerTitle: true,
      bottom: _scrollPositionOffset >= 130
          ? PreferredSize(
              preferredSize: const Size.square(50),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      buildOutlinedButton(name: 'Restaurants'),
                      buildOutlinedButton(name: 'Groceries'),
                      buildOutlinedButton(name: 'Alcohol'),
                      buildOutlinedButton(name: 'Flowers'),
                      buildOutlinedButton(name: 'General Stores'),
                      buildOutlinedButton(name: 'Health & Beauty'),
                      buildOutlinedButton(name: 'Pet supply'),
                      buildOutlinedButton(name: 'Pharmacies'),
                      buildOutlinedButton(name: 'Wolt+'),
                    ],
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
