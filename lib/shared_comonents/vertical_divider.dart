import 'package:flutter/material.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/size_config.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height05,
      width: 0.5,
      color: AppColors().mainDarkColor,
      // margin:
      //     EdgeInsets.only(left: SizeConfig.width03, right: SizeConfig.width03),
    );
  }
}
