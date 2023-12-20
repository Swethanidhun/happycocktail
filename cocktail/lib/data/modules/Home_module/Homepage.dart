import 'package:cocktail/data/modules/Home_module/Home_controller.dart';
import 'package:cocktail/data/widgets/Card.dart';
import 'package:cocktail/data/widgets/appbar.dart';
import 'package:cocktail/data/widgets/appdrawer.dart';
import 'package:cocktail/data/widgets/bottomnavigationbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;

    Get.put(HomeController());
    final homecontroller = Get.find<HomeController>();


    return Scaffold(
      drawer: Appdrawer(),
      bottomNavigationBar: BottomNavigation(),
      appBar: const Appbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            // auth.currentUser!.emailVerified ? SizedBox() : Text("${auth.currentUser!.email} not verifyed"),
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
