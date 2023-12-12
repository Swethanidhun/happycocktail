import 'package:cocktail/data/modules/Home_module/Home_controller.dart';
import 'package:cocktail/data/widgets/Card.dart';
import 'package:cocktail/data/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    final homecontroller = Get.find<HomeController>();

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
      appBar:const Appbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            
            const SizedBox(
              height: 50,
            ),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homecontroller.cocktaillist.length,
                  itemBuilder: (context, index) {
                    return Cardwidget(
                      name: "${homecontroller.cocktaillist[index].strDrink}",
                      url: homecontroller.cocktaillist[index].strDrinkThumb
                          .toString(),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
