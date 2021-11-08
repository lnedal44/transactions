import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transactions/screens/profile_details_screen/payment_nav_card.dart';
import 'package:transactions/shared_comonents/payment_type_card.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/app_get_x.dart';
import 'package:transactions/utility/app_styles.dart';
import 'package:transactions/utility/size_config.dart';

import 'header_title.dart';
import 'nested_cercles.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final get = Get.put(Getx());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.width05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderTitle(),
            SizedBox(height: SizeConfig.height * 0.025),
            GetBuilder<Getx>(
              builder: (_) => Row(
                children: [
                  PaymentNavCard(get: get, index: 0, title: 'All'),
                  PaymentNavCard(get: get, index: 1, title: 'Income'),
                  PaymentNavCard(get: get, index: 2, title: 'Outcome'),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.height * 0.025),
            Text('Today', style: textStyleHeadlineDark),
            SizedBox(height: SizeConfig.height * 0.025),
            PaymentTypeCard(
              icon: Icons.email_outlined,
              cardName: 'Payment',
              cardAmount: get.userPayments.recentTransactions.toString(),
              cardSubtitle: get.userPayments.recentTransactionsDescription,
            ),
            SizedBox(height: SizeConfig.height * 0.05),
            NestedCercles(),
            Spacer(),
            Center(
              child: Container(
                height: SizeConfig.height * 0.05,
                width: SizeConfig.width * 0.7,
                decoration: BoxDecoration(
                  color: AppColors().mainDarkColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'See Details',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.height * 0.05),
          ],
        ),
      ),
    );
  }
}
