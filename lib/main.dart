import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:transactions/screens/main_profile_screen/main_profile_screen.dart';
import 'package:transactions/utility/app_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors().mainLightColor),
      title: 'Transaction App',
      home: const MainProfileScreen(),
    );
  }
}
