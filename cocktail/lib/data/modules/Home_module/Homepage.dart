import 'package:cocktail/data/widgets/Card.dart';
import 'package:cocktail/data/widgets/circleavathar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 1, 110, 50),
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "")
          ]),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        actions: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 15,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide.none),
                      
                      filled: true,
                      fillColor: const Color.fromARGB(255, 1, 167, 131)
                              .withOpacity(0.1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Circleavathar(url: "assets/images/menu.png"),
                Circleavathar(url: "assets/images/—Pngtree—cartoon cocktail_2716380.png"),
                Circleavathar(url: "assets/images/—Pngtree—cartoon cocktail_2716380.png"),
                Circleavathar(url: "assets/images/—Pngtree—cartoon cocktail_2716380.png"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Cardwidget();
              },
            ),
            Cardwidget(),
          ],
        ),
      ),
    );
  }
}
