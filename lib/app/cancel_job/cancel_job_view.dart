import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';

class CancelJob extends StatelessWidget {
  const CancelJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: ConstantStrings.cancelJob,
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SafeArea(
        minimum: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: ConstantStrings.reasonCancel,
              fontWeight: FontWeight.w500,
              color: AppColors.black_color,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                AppText(
                  title: ConstantStrings.chngPlan,
                  size: 12,
                  color: AppColors.black_color,
                )
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                AppText(
                  title: ConstantStrings.chngPlan,
                  size: 12,
                  color: AppColors.black_color,
                )
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                AppText(
                  title: ConstantStrings.chngPlan,
                  size: 12,
                  color: AppColors.black_color,
                )
              ],
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                AppText(
                  title: ConstantStrings.chngPlan,
                  size: 12,
                  color: AppColors.black_color,
                )
              ],
            ),
            SizedBox(height: 10),
            appField(
              context: context,
              hint: ConstantStrings.writeDetail,
              max: 4,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                AppText(
                  title: ConstantStrings.note,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black_color,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.info,
                  size: 18,
                  color: AppColors.blue_color,
                ),
              ],
            ),
            SizedBox(height: 16),
            AppText(
              title: ConstantStrings.seccurityDepo,
              color: AppColors.black_color,
            ),
            SizedBox(height: 16),
            AppText(
              title: ConstantStrings.already,
              color: AppColors.black_color,
            ),
            SizedBox(height: 60),
            AppButton(
              buttonName: ConstantStrings.submit,
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: Get.height * .43,
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
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor.withOpacity(.1),
                              borderRadius: BorderRadius.circular(
                                60,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Image.asset(ImageConst.done),
                            ),
                          ),
                          SizedBox(height: 12),
                          AppText(
                            title: ConstantStrings.cancelRequest,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black_color,
                          ),
                          SizedBox(height: 12),
                          AppText(
                            title: ConstantStrings.bottomShead,
                            color: AppColors.grey_color,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 36),
                          AppButton(
                            buttonName: ConstantStrings.close,
                            onTap: () {
                              Get.back();
                            },
                            buttonColor: AppColors.secondaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              buttonColor: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
