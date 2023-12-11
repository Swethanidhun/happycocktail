import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:cocktail/data/widgets/button.dart';
import 'package:cocktail/data/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/images/bg.png"))),
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Login",
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
                const SizedBox(height: 8,),
                const Text("Forgot password?",style: TextStyle(fontSize: 12,color:Color.fromARGB(255, 76, 175, 145)),),
                const SizedBox(height: 20,),
                Button(text: "Login",onPressed: () {
                  Get.to(() => HomePage());
                },),
              ],
            ),
          ),
        ));
  }
}