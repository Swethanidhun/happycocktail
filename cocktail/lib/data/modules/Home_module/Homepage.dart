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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Circleavathar(),
                  Circleavathar(),
                  Circleavathar(),
                  Circleavathar(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              // ListView.builder(
              //   itemCount: 10,
              //   itemBuilder: (context, index) {
              //     return const Cardwidget();
              //   },
              // ),
              //  Cardwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
