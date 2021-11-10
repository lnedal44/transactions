import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transactions/modals/user_payment_modal.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/payment_bloc.dart';
// import 'package:transactions/utility/app_get_x.dart';
import 'package:transactions/utility/size_config.dart';

class PaymentNavCard extends StatelessWidget {
  const PaymentNavCard({
    Key? key,
    // required this.get,
    required this.index,
    required this.title,
  }) : super(key: key);

  // final Getx get;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PaymentBloc(),
      child: InkWell(
        onTap: () => PaymentBloc().updateSelectedPaymentCardBloc(index),
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.width * 0.01),
          child: Container(
            height: SizeConfig.height * 0.035,
            decoration: BoxDecoration(
              color: PaymentBloc().currentSelectedPaymentCard == index
                  ? AppColors().mainDarkColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.width * 0.04),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: PaymentBloc().currentSelectedPaymentCard == index
                          ? Colors.white
                          : AppColors().mainDarkColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
