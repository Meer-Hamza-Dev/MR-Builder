import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_builder/app/local_notification/local_notification.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';
import 'package:mr_builder/utils/bottom_navigation/bottom_navigation.dart';

class Home_view extends StatelessWidget {
  const Home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 260,
                color: AppColors.primaryColor,
                child: SafeArea(
                  minimum: EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(ImageConst.menu),
                          GestureDetector(
                              onTap: () {
                                final notificationService =
                                    NotificationService();
                                notificationService.showNotification(
                                  id: 1,
                                  body: "This is Our Testing Notification",
                                  title: "Flutter Notification",
                                  payload: "Max Notification",
                                );
                              },
                              child: SvgPicture.asset(ImageConst.notification))
                        ],
                      ),
                      SizedBox(height: 25),
                      appField(
                        context: context,
                        isBorderLine: false,
                        fillColor: AppColors.white_color,
                        borderRadius: BorderRadius.circular(10),
                        hint: ConstantStrings.search,
                        suffixWidget: Padding(
                          padding: const EdgeInsets.all(14),
                          child: SvgPicture.asset(
                            ImageConst.search,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.77,
            minChildSize: 0.77,
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
                          left: 20, right: 20, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: ConstantStrings.pastTask,
                            color: AppColors.black_color,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 8, 15, 8),
                                  child: AppText(
                                    title: ConstantStrings.active,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white_color,
                                    size: 12,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  border:
                                      Border.all(color: AppColors.border_color),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 8, 15, 8),
                                  child: AppText(
                                    title: ConstantStrings.completed,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey_color,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.needElectricianRoute);
                            },
                            child: PostedTasks(),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.activeJobRoute);
                            },
                            child: PostedTasks(),
                          ),
                          SizedBox(height: 20),
                          PostedTasks(),
                          SizedBox(height: 20),
                          PostedTasks(),
                          SizedBox(height: 20),
                          PostedTasks(),
                          SizedBox(height: 20),
                          PostedTasks(),
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

Widget PostedTasks() {
  return Container(
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
                                borderRadius: BorderRadius.circular(5),
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
  );
}
