import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:cocktail/data/modules/Signin_module/signin_controller.dart';
import 'package:cocktail/data/modules/alcoholic_module/alcoholic.dart';
import 'package:cocktail/data/modules/non_alcoholic_module/non_alcoholic.dart';
import 'package:cocktail/data/modules/ordinarydrink_module/ordinaryDrink.dart';
import 'package:cocktail/data/widgets/circleavathar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appdrawer extends StatelessWidget {
  const Appdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
        Get.put(SigninController());
    final signincontroller = Get.find<SigninController>();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 245, 206, 88)),
              child: Column(
                children: [
                  Circleavathar(
                    url: "assets/images/—Pngtree—cartoon cocktail_2716380.png",
                  ),
                  Text(
                    "${auth.currentUser!.email}",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
          const ListTile(
            title: Text("Home"),
          ),
          MenuAnchor(
            style: MenuStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(
                    const Size(double.infinity, double.infinity))),
            menuChildren: [
              MenuItemButton(
                child: const Text(
                  "Cocktail",
                ),
                onPressed: () {
                  Get.to(() =>  HomePage());
                },
              ),
              MenuItemButton(
                child: const Text(
                  "Ordinary Drink",
                ),
                onPressed: () {
                  Get.to(() => const OrdinaryDrink());
                },
              ),
              MenuItemButton(
                child: const Text(
                  "Alcoholic",
                ),
                onPressed: () {
                  Get.to(() => const AlcoholicPage());
                },
              ),
              MenuItemButton(
                child: const Text(
                  "Non_Alcoholic",
                ),
                onPressed: () {
                  Get.to(() => const NonAlcoholicPage());
                },
              ),
            ],
            builder: (context, controller, child) {
              return TextButton(
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ));
            },
          ),
          const ListTile(
            title: Text("Home"),
          ),
          GestureDetector(
            onTap: () {
              signincontroller.signOut();
            },
            child: const ListTile(
              title: Text("Sign out"),
              trailing: Icon(Icons.logout_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
