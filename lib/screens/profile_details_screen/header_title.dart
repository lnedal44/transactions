import 'package:flutter/material.dart';
import 'package:transactions/utility/app_styles.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Recent Transactions', style: textStyleHeadlineDark),
        const Text('See all'),
      ],
    );
  }
}
