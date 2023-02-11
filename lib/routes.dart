import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:ecommerce_wael/veiw/screens/auth/login.dart';
import 'package:ecommerce_wael/veiw/screens/on_boarding.dart';
import 'package:flutter/material.dart';
Map<String, Widget Function(BuildContext context)> routes={
  AppRoutes.login: (context)=>const LoginPage(),
  AppRoutes.onBoarding: (context) => const OnBoarding() ,

};