// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mr_builder/app/auth/controller/auth_controller.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';

class SignUp_view extends StatefulWidget {
  const SignUp_view({super.key});

  @override
  State<SignUp_view> createState() => _SignUp_viewState();
}

class _SignUp_viewState extends State<SignUp_view> {
  late User _firebaseUser;
  String? _verificationCode;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  String token = "your_device_token_here";

  @override
  void initState() {
    super.initState();
    phoneController.text = '+923188862732';
    _verifyPhone();
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+923188862732',
      verificationCompleted: (PhoneAuthCredential credential) async {
        try {
          await FirebaseAuth.instance.signInWithCredential(credential);
          print(
              "Phone number automatically verified and user signed in: ${FirebaseAuth.instance.currentUser}");
        } catch (e) {
          print("Error during automatic sign-in: $e");
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Verification failed: ${e.message}");
        Get.snackbar('Verification Failed', e.message!);
      },
      codeSent: (String verificationID, int? resendToken) {
        setState(() {
          _verificationCode = verificationID;
        });
        Get.snackbar(
          'Code Sent',
          'Please check your phone for the verification code.',
        );
      },
      codeAutoRetrievalTimeout: (String verificationID) {
        if (mounted) {
          setState(() {
            _verificationCode = verificationID;
          });
        }
      },
      timeout: Duration(seconds: 120),
    );
  }

  _signInWithPhoneNumber(String currentText) async {
    try {
      await FirebaseAuth.instance
          .signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: _verificationCode.toString(),
          smsCode: currentText,
        ),
      )
          .then((value) {
        if (value.user != null) {
          print("User signed in successfully.");
          Get.toNamed(Routes.homeViewRoute);
        }
      });
    } catch (e) {
      print("Error during sign-in: $e");
      Get.snackbar('Error', 'Invalid code. Please try again.');
    }
  }

  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return GetBuilder<AuthController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 410,
                  width: double.infinity,
                  color: AppColors.primaryColor,
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, top: 35),
                            child: SvgPicture.asset(
                              'assets/images/backBtn.svg',
                              color: AppColors.white_color,
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Center(
                          child: AppText(
                            title: ConstantStrings.signUpText,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white_color,
                            size: 32,
                            textAlign: TextAlign.center,
                            // letterSpacing: -2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 220,
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black_color.withOpacity(.1),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: appField(
                                context: context,
                                border: AppColors.border_color,
                                hint: ConstantStrings.FirstNamText,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: appField(
                                context: context,
                                border: AppColors.border_color,
                                hint: ConstantStrings.LastNamText,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        appField(
                          context: context,
                          border: AppColors.border_color,
                          hint: ConstantStrings.emailIdText,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email id';
                            }
                          },
                        ),
                        SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white_color,
                            border: Border.all(color: AppColors.border_color),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF4F5FA),
                                blurRadius: 6,
                                offset: Offset(0, -3),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: ConstantStrings.selectText,
                                  color: AppColors.grey_color,
                                  fontWeight: FontWeight.w500,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.grey_color,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.border_color),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Obx(
                                  () => DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value:
                                          controller.selectedFlag.value.isEmpty
                                              ? null
                                              : controller.selectedFlag.value,
                                      items: controller.flags.map((flag) {
                                        return DropdownMenuItem<String>(
                                          value: flag,
                                          child: SvgPicture.asset(
                                            flag,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        if (value != null) {
                                          controller.setSelectedFlag(value);
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              VerticalDivider(color: AppColors.border_color),
                              Expanded(
                                child: appField(
                                  context: context,
                                  hint: ConstantStrings.phoneNo,
                                  isBorderLine: false,
                                  hintColor: AppColors.grey_color,
                                  hintSize: 12,
                                  controller: phoneController,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: 20),
                        // appField(
                        //   context: context,
                        //   hint: "Enter Verification Code",
                        //   // isBorderLine: false,
                        //   hintColor: AppColors.grey_color,
                        //   hintSize: 12,
                        //   controller: codeController,
                        // ),
                        SizedBox(height: 16),
                        Obx(
                          () {
                            return appField(
                              context: context,
                              border: AppColors.border_color,
                              hint: ConstantStrings.passwordText,
                              suffixWidget: IconButton(
                                onPressed: () {
                                  controller.togglePasswordVisibility();
                                },
                                icon: Icon(
                                  controller.isPasswordHidden.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: AppColors.grey_color,
                                  size: 20,
                                ),
                              ),
                              obscure: controller.isPasswordHidden.value,
                              validator: (value) {
                                if (value!.length < 6) {
                                  return 'Password must contain at least 6 characters';
                                }
                                if (!value.contains(RegExp(r'[A-Z]'))) {
                                  return 'Password must contain at least one uppercase \nletter';
                                }
                                if (!value.contains(RegExp(r'[a-z]'))) {
                                  return 'Password must contain at least one \nlowercase letter';
                                }
                                if (!value.contains(RegExp(r'[0-9]'))) {
                                  return 'Password must contain at least one digit';
                                }
                                return null;
                              },
                            );
                          },
                        ),
                        SizedBox(height: 24),
                        // AppButton(
                        //   buttonName: 'Send OTP',
                        //   buttonColor: AppColors.secondaryColor,
                        //   onTap: _verifyPhone,
                        // ),
                        AppButton(
                          buttonName: ConstantStrings.signUpText,
                          buttonColor: AppColors.secondaryColor,
                          onTap: () {
                            _signInWithPhoneNumber(codeController.text.trim());
                          },
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 92,
                              height: 1,
                              color: AppColors.border_color,
                            ),
                            AppText(
                              title: ConstantStrings.orLoginWith,
                              color: AppColors.grey_color,
                              size: 12,
                            ),
                            Container(
                              width: 92,
                              height: 1,
                              color: AppColors.border_color,
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white_color,
                            border: Border.all(color: AppColors.border_color),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF4F5FA),
                                blurRadius: 6,
                                offset: Offset(0, -3),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(58, 15, 58, 15),
                            child: Row(
                              children: [
                                SvgPicture.asset(ImageConst.google),
                                SizedBox(width: 10),
                                AppText(
                                  title: ConstantStrings.continueGoogle,
                                  color: AppColors.black_color,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              title: ConstantStrings.alrdyAccText,
                              color: AppColors.grey_color,
                              fontWeight: FontWeight.w500,
                              size: 12,
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.signinViewRoute);
                              },
                              child: AppText(
                                title: ConstantStrings.loginText,
                                color: AppColors.secondaryColor,
                                fontWeight: FontWeight.w600,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
