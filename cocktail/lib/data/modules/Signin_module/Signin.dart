import 'package:cocktail/data/modules/Login_module/Login.dart';
import 'package:cocktail/data/widgets/button.dart';
import 'package:cocktail/data/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/images/bg.png"))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontFamily: "Montserrat-Black",
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/main (1).png",
                    ),
                    height: 150,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Textfield(
                  headline: "Username",
                ),
                const SizedBox(
                  height: 10,
                ),
                Textfield(headline: "Password"),
                const SizedBox(
                  height: 10,
                ),
                Textfield(headline: "Confirm password"),
                const SizedBox(
                  height: 40,
                ),
                Button(
                  text: "Sign up",
                  onPressed: () {
                    Get.to(() => const Login());
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
