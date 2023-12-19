

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cocktail/data/modules/Signin_module/signin_controller.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';

// class LoginController extends GetxController {
//   static LoginController get instance => Get.find();
//   FirebaseAuth auth = FirebaseAuth.instance;
//   FirebaseFirestore db = FirebaseFirestore.instance;

//   final _authRepo = Get.put(SigninController());

//   getUserData(){
//     final email = auth.currentUser!.email;
//     if (email != null) {
//       _authRepo.getUserDetails(email);
//     }
//     else{
//       Get.snackbar("Error", "Login to continue");
//     }
//   }
// }