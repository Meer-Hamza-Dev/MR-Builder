import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Create a task',
        ),
        backgroundColor: AppColors.white_color,
      ),
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(22),
          child: Column(
            children: [
              appField(
                context: context,
                hint: ConstantStrings.taskTitle,
                border: AppColors.border_color,
              ),
              SizedBox(height: 20),
              appField(
                context: context,
                hint: ConstantStrings.taskDescription,
                border: AppColors.border_color,
                max: 5,
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.selectCategory,
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
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.hourly,
                        color: AppColors.black_color,
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
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 15, 14, 15),
                  child: AppText(
                    title: ConstantStrings.perHours,
                    color: AppColors.black_color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.workTime,
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
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.selectLincese,
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
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.personsRrequired,
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
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.location,
                        color: AppColors.grey_color,
                        fontWeight: FontWeight.w500,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.grey_color,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.selectDate,
                        color: AppColors.grey_color,
                        fontWeight: FontWeight.w500,
                      ),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.grey_color,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              appField(
                context: context,
                hint: ConstantStrings.time,
                border: AppColors.border_color,
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  border: Border.all(color: AppColors.border_color),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: ConstantStrings.attachments,
                        color: AppColors.grey_color,
                        fontWeight: FontWeight.w500,
                      ),
                      Icon(
                        Icons.attachment,
                        color: AppColors.grey_color,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              AppButton(
                buttonName: ConstantStrings.publishTask,
                buttonColor: AppColors.secondaryColor,
                onTap: () {
                  Get.toNamed(Routes.securityDepositRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
