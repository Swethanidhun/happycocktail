import 'package:cocktail/data/modules/Login_module/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  final emailcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
  }

  Future resetPassword() async {
    try {
      await auth.sendPasswordResetEmail(email: emailcontroller.text);
      Get.off(() => const Login());
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
