import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:ecommerce_wael/view/screens/auth/reset_password.dart';
import 'package:ecommerce_wael/view/screens/auth/verify_code_page.dart';
import 'package:ecommerce_wael/view/screens/auth/forget_password_page.dart';
import 'package:ecommerce_wael/view/screens/auth/login.dart';
import 'package:ecommerce_wael/view/screens/auth/signup.dart';
import 'package:ecommerce_wael/view/screens/home_pages/home_screen.dart';
import 'package:ecommerce_wael/view/screens/on_boarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  //auth
  AppRoutes.login: (context) => const LogInScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
  AppRoutes.forgetPassword: (context) => const ForgetPasswordPage(),
  AppRoutes.verifyCode:(context)=> const VerifyCodePage(),
  AppRoutes.resetPassword:(context)=>const ResetPasswordPage(),
//on boarding
  AppRoutes.onBoarding: (context) => const OnBoarding(),
  //Home Page
  AppRoutes.homePage: (context) => const HomeScreen(),

};
