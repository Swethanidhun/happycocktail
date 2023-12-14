import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cocktail/data/models/usermodel.dart';
import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      loading.value = true;
      await auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
      await addUser();
      await verifyEmail();
      Get.to(() => HomePage());
      loading.value = false;
    } catch (e) {
      Get.snackbar("error", "$e");
      loading.value = false;
    }
  }

  addUser() async {
    UserModel user = UserModel(
      username: usernamecontroller.text,
      email: auth.currentUser!.email,
    );
    await db
        .collection("user")
        .doc(auth.currentUser!.uid)
        .collection("profile")
        .add(user.toJson());
  }

  signOut() async {
    await auth.signOut();
  }

  login() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: loginemailcontroller.text,
          password: loginpasswordcontroller.text);
    } catch (e) {
      Get.snackbar("error", "$e");
    }
  }

  verifyEmail()async{
    await auth.currentUser?.sendEmailVerification();
    Get.snackbar("Email", "send");
  }
}
