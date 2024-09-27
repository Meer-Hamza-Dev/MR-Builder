import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mr_builder/app/auth/controller/auth_controller.dart';
import 'package:mr_builder/app/auth/social_login/social_login.dart';
import 'package:mr_builder/app/home/home_view.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';

class SignIn_View extends StatelessWidget {
  SignIn_View({super.key});

  @override
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        title: ConstantStrings.signInAccount,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white_color,
                        size: 32,
                        // letterSpacing: -2,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                      AppText(
                        title: ConstantStrings.enterMailandPass,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white_color,
                        // letterSpacing: -1,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 320,
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
                        GestureDetector(
                          onTap: () async {
                            AuthenticationHelper()
                                .googlebySignIn(context: context);
                          },
                          child: Container(
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
                              padding:
                                  const EdgeInsets.fromLTRB(58, 15, 58, 15),
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
                        appField(
                          context: context,
                          border: AppColors.border_color,
                          hint: ConstantStrings.emailIdMob,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your mobile no or email';
                            }
                          },
                        ),
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
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: null,
                                ),
                                AppText(
                                  title: ConstantStrings.rememberMe,
                                  color: AppColors.grey_color,
                                  fontWeight: FontWeight.w500,
                                  size: 12,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: AppText(
                                title: ConstantStrings.ForgotPas,
                                color: AppColors.blue_color,
                                fontWeight: FontWeight.w500,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        AppButton(
                          buttonName: ConstantStrings.loginText,
                          buttonColor: AppColors.secondaryColor,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Get.toNamed(Routes.homeViewRoute);
                            }
                          },
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              title: ConstantStrings.dontAccText,
                              color: AppColors.grey_color,
                              fontWeight: FontWeight.w500,
                              size: 12,
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.signupViewRoute);
                              },
                              child: AppText(
                                title: ConstantStrings.signUpText,
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
