import 'package:codelandia_wolt_clone/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/carousel_slider_widget.dart';
import '../widgets/food_categories.dart';

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
              FoodCategories(),
              SizedBox(height: 10),
              CarouselSliderWidget(),
              SizedBox(height: 10),
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
              Placeholder(),
              Placeholder(),
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

  Padding buildOutlinedButton({required String name}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: OutlinedButton(
        style: const ButtonStyle(
          minimumSize: MaterialStatePropertyAll(
            Size(0, 0),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Text(
            name,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBarFirst() {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: const Color(0xFF1C1C1C),
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_home_work_outlined,
            color: Colors.blue,
          )),
      title: const Text(
        'Ev, Qara Qarayev 59, mənzil 8',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
      ),
    );
  }
}
