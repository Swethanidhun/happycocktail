import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:cocktail/data/modules/ordinarydrink_module/ordinaryDrink.dart';
import 'package:cocktail/data/widgets/appdrawer.dart';
import 'package:cocktail/data/widgets/circleavathar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 130,
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      cursorColor: Colors.black,
                      cursorHeight: 15,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 1, 167, 131)
                              .withOpacity(0.1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Circleavathar(
                      url: "assets/images/icons8-menu-50.png",
                      onTap: () => Scaffold.of(context).openDrawer(),
                    ),
                    Circleavathar(
                      url: "assets/images/cocktail.png",
                      onTap: () {
                        Get.to(() =>  HomePage());
                      },
                    ),
                    Circleavathar(
                      url: "assets/images/orange-juice_567140.png",
                      onTap: () {
                        Get.to(() => const OrdinaryDrink());
                      },
                    ),
                    const Circleavathar(
                        url:
                            "assets/images/—Pngtree—cartoon cocktail_2716380.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(130);
}
