import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../../widgets/textfield.dart';
import 'signin_controller.dart';
class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    Get.put(SigninController());
    final signincontroller = Get.find<SigninController>();

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
                  controller: signincontroller.usernamecontroller,
                  headline: "Username",
                ),
                const SizedBox(
                  height: 10,
                ),
                Textfield(
                    controller: signincontroller.emailcontroller,
                    headline: "Email"),
                const SizedBox(
                  height: 10,
                ),
                Textfield(
                    controller: signincontroller.passwordcontroller,
                    headline: "Password"),
                const SizedBox(
                  height: 40,
                ),
                Button(
                  text: "Sign up",
                  onPressed: () {
                    signincontroller.signUp();
                    // Get.to(() => const Login());
                  },
                  width: double.infinity,
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
