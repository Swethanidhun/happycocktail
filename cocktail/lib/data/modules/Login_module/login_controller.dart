import 'package:cocktail/data/modules/Home_module/Homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
    FirebaseAuth auth = FirebaseAuth.instance;
    signInWithGoogle()async{
      GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication googleauth = await googleuser!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleauth.accessToken,
        idToken: googleauth.idToken
      );
      UserCredential usercredential = await auth.signInWithCredential(credential);
      print(usercredential.user!.displayName);
      if (usercredential.user != null) {
        Get.to(() => const HomePage());
      }
    }

    googleSignOut()async{
      await GoogleSignIn().signOut();
      auth.signOut();
    }
}