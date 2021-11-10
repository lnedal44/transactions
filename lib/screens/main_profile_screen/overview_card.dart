import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
import 'package:transactions/shared_comonents/height_spacer.dart';
import 'package:transactions/shared_comonents/payment_type_card.dart';
// import 'package:transactions/utility/app_get_x.dart';
import 'package:transactions/utility/payment_bloc.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final Getx get = Get.find();
    return BlocProvider(
      create: (_) => PaymentBloc(),
      child: Column(
        children: [
          PaymentTypeCard(
            icon: Icons.arrow_upward_outlined,
            cardName: 'Send',
            cardAmount: PaymentBloc().userPayments.sent.toString(),
            cardSubtitle: PaymentBloc().userPayments.sentDescription,
          ),
          const HeightSpacer(),
          PaymentTypeCard(
            icon: Icons.arrow_downward_outlined,
            cardName: 'Receive',
            cardAmount: PaymentBloc().userPayments.receive.toString(),
            cardSubtitle: PaymentBloc().userPayments.receiveDescription,
          ),
          const HeightSpacer(),
          PaymentTypeCard(
            icon: Icons.attach_money,
            cardName: 'Loan',
            cardAmount: PaymentBloc().userPayments.loan.toString(),
            cardSubtitle: PaymentBloc().userPayments.loanDescription,
          ),
        ],
      ),
    );
  }
}
