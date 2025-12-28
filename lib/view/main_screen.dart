import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nectar_grocery/view/cart_screen.dart';
import 'package:nectar_grocery/view/explore_screen.dart';
import 'package:nectar_grocery/view/favourite_screen.dart';
import 'package:nectar_grocery/view/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
  ];

  final List<IconData> _icons = [
    Icons.store_outlined,
    Icons.explore_outlined,
    Icons.shopping_cart_outlined,
    Icons.favorite_border_outlined,
  ];

  final List<String> _labels = [
    "Shop",
    "Explore",
    "Cart",
    "Favourite",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 70,
        itemCount: _icons.length,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.none, 
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.green : Colors.black;

          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_icons[index], size: 27, color: color),
              const SizedBox(height: 4),
              Text(
                _labels[index],
                style: TextStyle(
                  color: color,
                  fontSize: 13,
                  fontWeight:
                      isActive ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
