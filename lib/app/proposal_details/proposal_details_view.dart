import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class ProposalDetails extends StatelessWidget {
  const ProposalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Proposal details',
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
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
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.workerDetailRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: AppColors.blue_color),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: AppText(
                          title: ConstantStrings.viewProfile,
                          size: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blue_color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.border_color.withOpacity(.1),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: ConstantStrings.taskCompleted,
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      title: ConstantStrings.electCode,
                      color: AppColors.grey_color,
                      size: 12,
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
              ),
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 14),
            AppText(
              title: ConstantStrings.additionalDetails,
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
                  title: ConstantStrings.addPropDet,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey_color,
                ),
              ),
            ),
            SizedBox(height: 36),
            AppButton(
              buttonName: ConstantStrings.chatWill,
              onTap: () {
                Get.toNamed(Routes.chatViewRoute);
              },
              borderColor: AppColors.black_color,
              textColor: AppColors.black_color,
            ),
            SizedBox(height: 36),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    buttonName: ConstantStrings.decline,
                    onTap: () {},
                    textColor: AppColors.black_color,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: AppButton(
                    buttonName: ConstantStrings.hire,
                    buttonColor: AppColors.secondaryColor,
                    onTap: () {
                      Get.bottomSheet(
                        Container(
                          height: Get.height * .3,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: AppColors.white_color,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(22, 50, 22, 20),
                            child: Column(
                              children: [
                                AppText(
                                  title: ConstantStrings.acceptProp,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black_color,
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    AppText(
                                      title: ConstantStrings.agree,
                                      size: 12,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppButton(
                                        buttonName: ConstantStrings.cancel,
                                        onTap: () {},
                                        textColor: AppColors.black_color,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: AppButton(
                                        buttonName: ConstantStrings.confirm,
                                        buttonColor: AppColors.secondaryColor,
                                        onTap: () {
                                          Get.back();
                                          Get.bottomSheet(
                                            Container(
                                              height: Get.height * .4,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                color: AppColors.white_color,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        22, 50, 22, 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: AppColors
                                                            .secondaryColor
                                                            .withOpacity(.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          60,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(30),
                                                        child: Image.asset(
                                                            ImageConst.done),
                                                      ),
                                                    ),
                                                    SizedBox(height: 12),
                                                    AppText(
                                                      title: ConstantStrings
                                                          .congrats,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          AppColors.black_color,
                                                    ),
                                                    SizedBox(height: 12),
                                                    AppText(
                                                      title: ConstantStrings
                                                          .successFul,
                                                      color:
                                                          AppColors.grey_color,
                                                    ),
                                                    SizedBox(height: 36),
                                                    AppButton(
                                                      buttonName:
                                                          ConstantStrings
                                                              .startWork,
                                                      onTap: () {},
                                                      buttonColor: AppColors
                                                          .secondaryColor,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
