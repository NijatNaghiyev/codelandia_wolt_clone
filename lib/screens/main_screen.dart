import 'package:codelandia_wolt_clone/screens/discovery_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DiscoveryScreen(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      showUnselectedLabels: true,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),
          label: 'Discovery',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.restaurant,
          ),
          label: 'Restaurants',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.storefront_outlined,
          ),
          label: 'Stores',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
