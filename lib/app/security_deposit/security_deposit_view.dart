import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class SecurityDeposit extends StatelessWidget {
  const SecurityDeposit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Security deposit',
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.border_color.withOpacity(.3),
                  border: Border.all(
                    color: AppColors.border_color,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: ConstantStrings.wageperhour,
                            size: 12,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            title: r'$16',
                            size: 12,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: ConstantStrings.hours,
                            size: 12,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            title: '2',
                            size: 12,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      DottedLine(
                        dashColor: AppColors.grey_color.withOpacity(.3),
                        dashGapLength: 7,
                        dashLength: 8,
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: ConstantStrings.seurityDeposit,
                            size: 12,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                          AppText(
                            title: r'$32',
                            size: 12,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.whyseurityDeposit,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: ConstantStrings.commitmentAssurance,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black_color,
                      fontSize: 15,
                      height: 1.3,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: ConstantStrings.assurance,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey_color,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: ConstantStrings.trustBuilding,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black_color,
                      fontSize: 15,
                      height: 1.3,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: ConstantStrings.building,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: ConstantStrings.dispute,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black_color,
                      fontSize: 15,
                      height: 1.3,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: ConstantStrings.disputeResolation,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.grey_color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.faqs,
                fontWeight: FontWeight.w500,
                color: AppColors.black_color,
                size: 15,
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.faq1,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey_color,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.faq2,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey_color,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.faq3,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey_color,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.faq4,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey_color,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.faq5,
                        size: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey_color,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              AppButton(
                buttonName: ConstantStrings.proceedPay,
                buttonColor: AppColors.secondaryColor,
                onTap: () {
                  Get.toNamed(Routes.paymentViewRoute);
                },
              ),
              SizedBox(height: 24),
              Center(
                child: AppText(
                  title: ConstantStrings.needHelp,
                  color: AppColors.black_color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
