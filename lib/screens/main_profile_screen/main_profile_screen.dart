import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transactions/screens/main_profile_screen/profile_card.dart';
import 'package:transactions/screens/profile_details_screen/profile_details_screen.dart';
import 'package:transactions/shared_comonents/height_spacer.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/app_get_x.dart';
import 'package:transactions/utility/app_styles.dart';
import 'package:transactions/utility/size_config.dart';

import 'overview_card.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final get = Get.put(Getx());
    get.userInitInfo();
    get.userInitOverview();
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(SizeConfig.width05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.home_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.payment)),
              Container(
                  decoration: BoxDecoration(
                    color: AppColors().mainDarkColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Get.to(() => const ProfileDetailsScreen());
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.attach_money)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_outline_outlined)),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(SizeConfig.width05),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.height * 0.05),
              GetBuilder<Getx>(builder: (_) => const ProfileCard()),
              SizedBox(height: SizeConfig.height * 0.025),
              Row(
                children: [
                  Text('Overview', style: textStyleHeadlineDark),
                  const Icon(Icons.notification_important_sharp),
                  const Spacer(),
                  Text(get.userPayments.lastModify,
                      style: textStyleSubtitleDark),
                ],
              ),
              SizedBox(height: SizeConfig.height * 0.025),
              const OverviewCard(),
            ],
          ),
        ));
  }
}
