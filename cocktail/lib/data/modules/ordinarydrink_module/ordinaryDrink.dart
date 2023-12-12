import 'package:cocktail/data/modules/Home_module/Home_controller.dart';
import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:cocktail/data/widgets/Card.dart';
import 'package:cocktail/data/widgets/appbar.dart';
import 'package:cocktail/data/widgets/circleavathar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OrdinaryDrink extends StatefulWidget {
  const OrdinaryDrink({super.key});

  @override
  State<OrdinaryDrink> createState() => _OrdinaryDrinkState();
}

class _OrdinaryDrinkState extends State<OrdinaryDrink> {
  @override
  Widget build(BuildContext context) {
        Get.put(HomeController());
    final homecontroller = Get.find<HomeController>();

    return  Scaffold(
       appBar: const Appbar(),
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
                      name: "${homecontroller.ordinartdrinklist[index].strDrink}",
                      url: homecontroller.ordinartdrinklist[index].strDrinkThumb.toString(),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}