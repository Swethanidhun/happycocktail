import 'package:cocktail/data/models/usermodel.dart';
import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:cocktail/data/modules/Login_module/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

class SigninController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final loginemailcontroller = TextEditingController();
  final loginpasswordcontroller = TextEditingController();
  var loading = false.obs;
  signUp() async {
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
      id: const Uuid().v4().toString(),
    );
    box1.put('email_${user.id}', auth.currentUser!.email);
    box1.put('password_${user.id}', passwordcontroller.text);
    box1.put('username_${user.id}', usernamecontroller.text);
  }

  signOut() async {
    loginemailcontroller.clear();
    loginpasswordcontroller.clear();
    await auth.signOut();
    Get.to(() => const Login());
  }

  login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginemailcontroller.text,
          password: loginpasswordcontroller.text);

      Get.to(() => const HomePage());
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

// ---------------hive--------------
  late Box box1;
  void createBox() async {
    box1 = await Hive.openBox("myBox");
    getData();
  }

  List<UserModel> userlist = [];

  void getData() async {
    for (int i = 0; i < box1.length; i++) {
      final key = box1.keyAt(i);
      final value = box1.get(key);

      if (key.startsWith('email_')) {
        final userId = key.substring('email_'.length);
        final password = box1.get('password_$userId');
        final username = box1.get('username_$userId');
        final user = UserModel(
          username: username,
          email: value,
          password: password ?? '',
          id: userId,
        );

        userlist.add(user);
      }
    }
  }

// ---------------------------------
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    createBox();
  }
}
