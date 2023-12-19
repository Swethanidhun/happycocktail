import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cocktail/data/models/usermodel.dart';
import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:cocktail/data/modules/Login_module/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class SigninController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final loginemailcontroller = TextEditingController();
  final loginpasswordcontroller = TextEditingController();
  var loading = false.obs;
  SignUp() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
      await addUser();
      await verifyEmail();
      Get.to(() => const Login());
    } catch (e) {
      Get.snackbar("error", "$e");
    }
  }

  final String id = "0";
  addUser() async {
    UserModel user = UserModel(
      username: usernamecontroller.text,
      email: auth.currentUser!.email,
      password: passwordcontroller.text,
      id: Uuid().v4().toString(),
    );
    await db
        .collection("login")
        .add(user.toJson())
        .whenComplete(
            () => Get.snackbar("Success", "Your account has been created"))
        .catchError((error, stackTrace) {
      Get.snackbar("Error", "Someting went wrong , Try again");
    });
  }

  signOut() async {
    await auth.signOut();
  }

  login() async {
    try {
      if (loginemailcontroller.text == emailcontroller.text &&
          loginpasswordcontroller.text == passwordcontroller.text) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailcontroller.text, password: passwordcontroller.text);
        Get.to(() => HomePage());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar('Error', 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar('Error', 'Wrong password provided for that user.');
      }
    }
  }

  verifyEmail() async {
    await auth.currentUser?.sendEmailVerification();
    Get.snackbar("Email", "send");
  }
}
