import 'dart:async';

import 'package:cocktail/data/modules/Login_module/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { 
      Get.to(() => Login());
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SizedBox(
              height: 40,
              child: Image(
                  image: AssetImage("assets/images/HappyCocktail.png"))),
        ),
      ),
    );
  }
}
