import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mr_builder/routes/app_pages.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  bool isLoggin = false;

  Future<void> googlebySignIn({required BuildContext context, token}) async {
    try {
      // var data;
      await googleSignIn.signOut(); // Sign out first if needed

      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      final result = await _auth.signInWithCredential(credential);
      User? user = result.user;
      final String? email = user?.providerData.first.email;
      final String? name = user?.displayName;
      final String? number = user?.phoneNumber;
      final String? photo = user?.photoURL;
      final String gid = user!.uid;

      debugPrint("hhh $email");
      debugPrint(name);
      debugPrint(gid);
      debugPrint(photo);
      debugPrint("this is phone ${number}");
      Get.toNamed(Routes.homeViewRoute);
    } catch (e) {
      return;
    }
  }
}
