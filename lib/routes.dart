import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:ecommerce_wael/veiw/screens/auth/VerifyCodePage.dart';
import 'package:ecommerce_wael/veiw/screens/auth/forget_password_page.dart';
import 'package:ecommerce_wael/veiw/screens/auth/login.dart';
import 'package:ecommerce_wael/veiw/screens/auth/signup.dart';
import 'package:ecommerce_wael/veiw/screens/on_boarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  //auth
  AppRoutes.login: (context) => const LogInScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
  AppRoutes.forgetPassword: (context) => const ForgetPasswordPage(),
  AppRoutes.verifyCode:(context)=>const VerifyCodePage(),
//on boarding
  AppRoutes.onBoarding: (context) => const OnBoarding(),
};
