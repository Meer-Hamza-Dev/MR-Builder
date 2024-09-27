import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class NeedElectrician extends StatelessWidget {
  const NeedElectrician({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: Stack(
        children: [
          Container(
            height: 330,
            color: AppColors.primaryColor,
            child: SafeArea(
              minimum: EdgeInsets.only(top: 70, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          ImageConst.backBtn,
                          color: AppColors.white_color,
                        ),
                      ),
                      SizedBox(width: 105),
                      AppText(
                        title: ConstantStrings.needElectrician,
                        color: AppColors.white_color,
                        fontWeight: FontWeight.w500,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Image.asset(
                    ImageConst.electricianImag,
                    width: 370,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: AppColors.grey_color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: AppColors.grey_color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 0.8,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                title: ConstantStrings.taskDetails,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.border_color,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Icon(Icons.delete_outline),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: AppColors.blue_color),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(7, 6, 7, 6),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            color: AppColors.blue_color,
                                            size: 18,
                                          ),
                                          SizedBox(width: 3),
                                          AppText(
                                            title: ConstantStrings.edit,
                                            size: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.blue_color,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 18),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.border_color),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              title: ConstantStrings
                                                  .needElectrician,
                                              size: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: AppColors.grey_color,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 6,
                                                      width: 6,
                                                      decoration: BoxDecoration(
                                                        color: AppColors
                                                            .secondaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    AppText(
                                                      title: ConstantStrings
                                                          .active,
                                                      size: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          AppColors.grey_color,
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
                                                    color:
                                                        AppColors.black_color,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        RichText(
                                          text: TextSpan(
                                            text: ConstantStrings.budget,
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                fontSize: 12,
                                                color: AppColors.grey_color,
                                              ),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: ConstantStrings.perHours,
                                                style: GoogleFonts.inter(
                                                  textStyle: TextStyle(
                                                    color:
                                                        AppColors.black_color,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                            title: ConstantStrings.proposals,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black_color,
                          ),
                          SizedBox(height: 16),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.proposalDetailsRoute);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.border_color),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  text:
                                                      ConstantStrings.willJacks,
                                                  style: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                        fontSize: 16,
                                                        color: AppColors
                                                            .black_color,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: ConstantStrings
                                                          .verified,
                                                      style: GoogleFonts.inter(
                                                        textStyle: TextStyle(
                                                          color: AppColors
                                                              .secondaryColor,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  AppText(
                                                    title: ConstantStrings
                                                        .jobsCompleted,
                                                    color: AppColors.grey_color,
                                                    size: 12,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: AppColors
                                                            .grey_color,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          12, 5, 12, 5),
                                                      child: AppText(
                                                        title: ConstantStrings
                                                            .chat,
                                                        size: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors
                                                            .black_color,
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
                                                    title:
                                                        ConstantStrings.reviews,
                                                    size: 12,
                                                    color:
                                                        AppColors.black_color,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 12),
                                    AppText(
                                      title: ConstantStrings.JobProposal,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black_color,
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.border_color,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: AppText(
                                          title: ConstantStrings.proposalDetail,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.grey_color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          TaskDetails(),
                          SizedBox(height: 12),
                          TaskDetails(),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget TaskDetails() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.border_color),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
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
    ),
  );
}
