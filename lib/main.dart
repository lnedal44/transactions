import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transactions/screens/main_profile_screen/main_profile_screen.dart';
import 'package:transactions/utility/app_colors.dart';
import 'package:transactions/utility/payment_bloc.dart';
import 'package:transactions/utility/user_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors().mainLightColor),
      title: 'Transaction App',
      home: MultiBlocProvider(
        providers: [
          BlocProvider<UserBloc>(
            create: (BuildContext context) => UserBloc(),
          ),
          BlocProvider<PaymentBloc>(
            create: (BuildContext context) => PaymentBloc(),
          ),
        ],
        child: const MainProfileScreen(),
      ),
    );
  }
}
