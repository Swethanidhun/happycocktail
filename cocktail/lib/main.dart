import 'package:cocktail/data/api/api_connect.dart';
import 'package:cocktail/data/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        Get.put(ApiConnect());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat-Black",
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}

