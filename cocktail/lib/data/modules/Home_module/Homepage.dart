import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Card.dart';
import '../../widgets/appbar.dart';
import '../../widgets/appdrawer.dart';
import '../../widgets/bottomnavigationbar.dart';
import 'Home_controller.dart';

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
      drawer: const Appdrawer(),
      bottomNavigationBar: const BottomNavigation(),
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
