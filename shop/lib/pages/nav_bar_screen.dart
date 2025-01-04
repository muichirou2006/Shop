import 'package:flutter/material.dart';
import 'package:shop/constan.dart';
import 'package:shop/pages/Profile/profile3.dart';
import 'package:shop/pages/cart/cart_screen.dart';
import 'package:shop/pages/favorite.dart';
import 'package:shop/pages/home/home_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int cuttenIndex = 2;
  List screens = const [
    Scaffold(),
    Favorite(),
    HomeScreen(),
    CartScreen(),
    Profile3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttenIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.home,
          size: 25,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 0;
                });
              },
              icon: const Icon(Icons.grid_view_outlined),
              iconSize: 30,
              color: cuttenIndex == 0 ? kPrimaryColor : Colors.grey.shade400,
            ),
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 1;
                });
              },
              icon: const Icon(Icons.favorite),
              iconSize: 30,
              color: cuttenIndex == 1 ? kPrimaryColor : Colors.grey.shade400,
            ),
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 3;
                });
              },
              icon: const Icon(Icons.shopping_cart),
              iconSize: 30,
              color: cuttenIndex == 3 ? kPrimaryColor : Colors.grey.shade400,
            ),
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 4;
                });
              },
              icon: const Icon(Icons.person),
              iconSize: 30,
              color: cuttenIndex == 4 ? kPrimaryColor : Colors.grey.shade400,
            ),
          ],
        ),
      ),
      body: screens[cuttenIndex],
    );
  }
}
