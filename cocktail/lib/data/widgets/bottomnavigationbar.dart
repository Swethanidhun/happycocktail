import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 1, 110, 50),
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "")
          ]);
  }
}