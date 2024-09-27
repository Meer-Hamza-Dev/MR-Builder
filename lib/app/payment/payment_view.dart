import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:mr_builder/utils/app_bars/main_appbar.dart';
import 'package:mr_builder/utils/app_buttons/app_buttons.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainAppBar(
          title: 'Payment',
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
              title: ConstantStrings.postedMethod,
              fontWeight: FontWeight.w500,
              color: AppColors.black_color,
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
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                    child: AppText(
                      title: ConstantStrings.creditCard,
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
                    border: Border.all(color: AppColors.border_color),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                    child: AppText(
                      title: ConstantStrings.debitCard,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey_color,
                      size: 12,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(color: AppColors.border_color),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                    child: AppText(
                      title: ConstantStrings.paypal,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey_color,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            appField(
              context: context,
              hint: ConstantStrings.cardNum,
              border: AppColors.border_color,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: appField(
                    context: context,
                    border: AppColors.border_color,
                    hint: ConstantStrings.expiryDate,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: appField(
                    context: context,
                    border: AppColors.border_color,
                    hint: ConstantStrings.cvv,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            appField(
              context: context,
              hint: ConstantStrings.nameCard,
              border: AppColors.border_color,
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {},
                child: AppText(
                  title: ConstantStrings.addCard,
                  color: AppColors.blue_color,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 60),
            AppButton(
              buttonName: ConstantStrings.proceedPay,
              buttonColor: AppColors.secondaryColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
