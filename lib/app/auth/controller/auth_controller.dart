import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final auth = FirebaseAuth.instance;
  final phoneNo = TextEditingController();
  var verificationId = ''.obs;
  var confirmController = TextEditingController();
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  var selectedFlag = ImageConst.uk.obs;

  final List<String> flags = [
    ImageConst.uk,
    // ImageConst.google,
  ];

  void setSelectedFlag(String flag) {
    selectedFlag.value = flag;
  }
}
