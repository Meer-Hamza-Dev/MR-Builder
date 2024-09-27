import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class WorkerDetail extends StatelessWidget {
  const WorkerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Worker details',
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
              Center(
                child: Column(
                  children: [
                    Image.asset(ImageConst.proposal),
                    SizedBox(height: 16),
                    AppText(
                      title: ConstantStrings.willJacks,
                      size: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black_color,
                    ),
                    SizedBox(height: 2),
                    AppText(
                      title: ConstantStrings.verified,
                      size: 10,
                      color: AppColors.secondaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.border_color.withOpacity(.3),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black_color.withOpacity(.1),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  title: ConstantStrings.taskCompleted,
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
                            SizedBox(height: 5),
                            AppText(
                              title: ConstantStrings.electCode,
                              color: AppColors.grey_color,
                              size: 12,
                            ),
                            SizedBox(height: 5),
                            RichText(
                              text: TextSpan(
                                text: ConstantStrings.hourlyRate,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.grey_color,
                                  ),
                                ),
                                children: [
                                  TextSpan(
                                    text: r' $16',
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
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffD1B525),
                                ),
                                SizedBox(width: 3),
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
                ),
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.aboutJack,
                color: AppColors.black_color,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              AppText(
                title: ConstantStrings.aboutJackDesc,
                fontWeight: FontWeight.w500,
                color: AppColors.grey_color,
              ),
              SizedBox(height: 14),
              AppText(
                title: ConstantStrings.review,
                color: AppColors.black_color,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              Reviews(),
              SizedBox(height: 16),
              Reviews(),
              SizedBox(height: 16),
              Reviews(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Reviews() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.border_color),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(ImageConst.bg),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: ConstantStrings.daniels,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: '(12-08-2024)',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: AppColors.grey_color,
                                fontSize: 10,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.secondaryColor,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.secondaryColor,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.secondaryColor,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.secondaryColor,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.secondaryColor,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AppText(
                  title: ConstantStrings.danielReview,
                  color: AppColors.grey_color,
                  size: 12,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
