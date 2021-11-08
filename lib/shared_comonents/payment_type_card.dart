import 'package:flutter/material.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/size_config.dart';

class PaymentTypeCard extends StatelessWidget {
  final String cardName;
  final String cardSubtitle;
  final String cardAmount;
  final IconData icon;
  const PaymentTypeCard({
    Key? key,
    required this.cardName,
    required this.cardSubtitle,
    required this.cardAmount,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height * 0.09,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
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
        child: Row(
          children: [
            Container(
              height: SizeConfig.height * 0.07,
              width: SizeConfig.height * 0.07,
              decoration: BoxDecoration(
                color: AppColors().mainLightColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(icon),
            ),
            SizedBox(width: SizeConfig.width05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(cardName,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  width: SizeConfig.width * 0.6,
                  child: Row(
                    children: [
                      Text(
                        cardSubtitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$' + cardAmount,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
