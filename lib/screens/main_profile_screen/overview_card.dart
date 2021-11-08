import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transactions/shared_comonents/height_spacer.dart';
import 'package:transactions/shared_comonents/payment_type_card.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/app_get_x.dart';
import 'package:transactions/utility/size_config.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Getx get = Get.find();
    return Column(
      children: [
        PaymentTypeCard(
          icon: Icons.arrow_upward_outlined,
          cardName: 'Send',
          cardAmount: get.userPayments.sent.toString(),
          cardSubtitle: get.userPayments.sentDescription,
        ),
        const HeightSpacer(),
        PaymentTypeCard(
          icon: Icons.arrow_downward_outlined,
          cardName: 'Receive',
          cardAmount: get.userPayments.receive.toString(),
          cardSubtitle: get.userPayments.receiveDescription,
        ),
        const HeightSpacer(),
        PaymentTypeCard(
          icon: Icons.attach_money,
          cardName: 'Loan',
          cardAmount: get.userPayments.loan.toString(),
          cardSubtitle: get.userPayments.loanDescription,
        ),
      ],
    );
  }
}
