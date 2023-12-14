import 'package:cocktail/data/api/api_connect.dart';
import 'package:cocktail/data/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyAWmpPcncGvkfmTdfXg1JmxVhO1l9vHm90", appId: "1:60298523262:android:cda437a0dfac9fd78d9e2f", messagingSenderId: "60298523262", projectId: "happycocktail")
  );
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

