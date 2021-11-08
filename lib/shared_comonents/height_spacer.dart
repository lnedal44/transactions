import 'package:flutter/cupertino.dart';
import 'package:transactions/utility/size_config.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeConfig.height * 0.02);
  }
}
