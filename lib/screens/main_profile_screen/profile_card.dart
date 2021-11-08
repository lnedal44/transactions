import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transactions/shared_comonents/vertical_divider.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/app_get_x.dart';
import 'package:transactions/utility/app_styles.dart';
import 'package:transactions/utility/size_config.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Getx get = Get.find();
    return Container(
      height: SizeConfig.height4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: AppColors().mainDarkColor,
            offset: const Offset(2.0, 2.0),
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.width03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              ],
            ),
            CircleAvatar(
                radius: SizeConfig.width * 0.15,
                backgroundImage: NetworkImage(get.currentUser.userImageUrl)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.width03),
              child: Text(get.currentUser.name, style: textStyleHeadlineDark),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.width * 0.01),
              child: Text(get.currentUser.jobTitle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.width05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('\$' + get.currentUser.income.toString(),
                          style: textStyleSubtitleDark),
                      const Text('Income'),
                    ],
                  ),
                  const CustomVerticalDivider(),
                  Column(
                    children: [
                      Text('\$' + get.currentUser.expenses.toString(),
                          style: textStyleSubtitleDark),
                      const Text('Expenses'),
                    ],
                  ),
                  const CustomVerticalDivider(),
                  Column(
                    children: [
                      Text('\$' + get.currentUser.loan.toString(),
                          style: textStyleSubtitleDark),
                      const Text('Loan'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
