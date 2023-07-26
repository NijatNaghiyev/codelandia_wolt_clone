import 'package:codelandia_wolt_clone/widgets/restaurants_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPositionOffset = 0.0;

  void _scrollListener() {
    setState(() {
      _scrollPositionOffset = _scrollController.offset;
      // _scrollController.position.pixels; //? _scrollController.offset
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_scrollPositionOffset);
    return Scaffold(
      appBar: _scrollPositionOffset <= 0.0
          ? buildAppBarFirstRestaurants()
          : buildAppBarSecondRestaurants(context),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 8,
                child: Text(
                  'Restaurants',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const RestaurantsItem(
                isBackWhite: false,
                imageUrl:
                    'https://images.deliveryhero.io/image/fd-tr/LH/qkeu-hero.jpg',
                name1: 'Sushi Dinki',
                name2: 'Meal is Life',
              ),
              const RestaurantsItem(
                isBackWhite: true,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAXvp4YdgDSAwOzRkeUWEbBO3KQzHXZluWDyEVxI2Tj6mrixcUul4WHPjNO8J8ZLZEA4I&usqp=CAU',
                name1: 'Köz Halil Usta',
                name2: 'Keep Calm and Eat Tantuni!',
              ),
              const RestaurantsItem(
                isBackWhite: false,
                imageUrl:
                    'https://www.wellplated.com/wp-content/uploads/2021/05/Best-Grilled-Chicken-Breast.jpg',
                name1: 'Park Firin',
                name2: 'Our quality is our difference!',
              ),
              const RestaurantsItem(
                isBackWhite: false,
                imageUrl:
                    'https://images.deliveryhero.io/image/fd-tr/LH/qkeu-hero.jpg',
                name1: 'Sushi Dinki',
                name2: 'Meal is Life',
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBarSecondRestaurants(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: const Color(0xFF1C1C1C),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.grey[700],
          ),
        ),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Restaurants',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            'Ev, Qara Qarayev 59, mənzil 8',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.grey[800],
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.filter_alt_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  AppBar buildAppBarFirstRestaurants() {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: const Color(0xFF1C1C1C),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.grey[700],
          ),
        ),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Ev, Qara Qarayev 59, mənzil 8',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
      ),
      actions: [
        IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.grey[800],
            ),
          ),
          onPressed: () {
            print(_scrollPositionOffset);
          },
          icon: const Icon(
            Icons.filter_alt_rounded,
            color: Colors.white,
          ),
        ),
        IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.grey[800],
            ),
          ),
          onPressed: () {},
          icon: const Icon(
            color: Colors.white,
            Icons.map_sharp,
          ),
        ),
      ],
    );
  }
}
