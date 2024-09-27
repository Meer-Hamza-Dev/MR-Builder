import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class ActiveJob extends StatelessWidget {
  const ActiveJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.needElectrician,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border_color),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Image.asset(ImageConst.electrician),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: ConstantStrings.needElectrician,
                                size: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.grey_color,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: AppColors.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      AppText(
                                        title: ConstantStrings.active,
                                        size: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.grey_color,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          AppText(
                            title: ConstantStrings.electCode,
                            color: AppColors.grey_color,
                            size: 12,
                          ),
                          SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              text: ConstantStrings.date,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.grey_color,
                                ),
                              ),
                              children: [
                                TextSpan(
                                  text: ConstantStrings.dateWords,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: AppColors.black_color,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            DottedBorder(
              color: AppColors.border_color,
              borderType: BorderType.RRect,
              radius: Radius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.border_color.withOpacity(.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.securityDeposit,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black_color,
                      ),
                      AppText(
                        title: r'$32',
                        size: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            AppText(
              title: ConstantStrings.workerDetails,
              fontWeight: FontWeight.w500,
              color: AppColors.black_color,
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border_color),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageConst.eleMan),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: ConstantStrings.willJacks,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.black_color,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ConstantStrings.verified,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontSize: 10,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    title: ConstantStrings.jobsCompleted,
                                    color: AppColors.grey_color,
                                    size: 12,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.grey_color,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12, 5, 12, 5),
                                      child: AppText(
                                        title: ConstantStrings.chat,
                                        size: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black_color,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffD1B525),
                                  ),
                                  AppText(
                                    title: ConstantStrings.reviews,
                                    size: 12,
                                    color: AppColors.black_color,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border_color),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                      child: Row(
                        children: [
                          Icon(Icons.phone_outlined),
                          SizedBox(width: 5),
                          AppText(
                            title: ConstantStrings.num,
                            size: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border_color),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                      child: Row(
                        children: [
                          Icon(Icons.mail_outline),
                          SizedBox(width: 5),
                          AppText(
                            title: ConstantStrings.mail,
                            size: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            AppText(
              title: ConstantStrings.update,
              fontWeight: FontWeight.w500,
              color: AppColors.black_color,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: AppColors.blue_color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: ConstantStrings.jobActive,
                    ),
                  ],
                ),
                AppText(
                  title: ConstantStrings.timing,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: AppColors.blue_color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: ConstantStrings.hireWill,
                    ),
                  ],
                ),
                AppText(
                  title: ConstantStrings.timing,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: AppColors.blue_color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: ConstantStrings.jobCreated,
                    ),
                  ],
                ),
                AppText(
                  title: ConstantStrings.timing,
                ),
              ],
            ),
            SizedBox(height: 48),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    buttonName: ConstantStrings.cancelJob,
                    onTap: () {
                      Get.toNamed(Routes.cancelJobRoute);
                    },
                    textColor: AppColors.black_color,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: AppButton(
                    buttonName: ConstantStrings.markComplete,
                    onTap: () {},
                    buttonColor: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            Center(
              child: AppText(
                title: ConstantStrings.needHelp,
                color: AppColors.black_color,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
