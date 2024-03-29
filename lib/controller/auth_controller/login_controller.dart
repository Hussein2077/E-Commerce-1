import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();

  toSignUpPage();

  toForgetPasswordPage();

  toHomeScreen();

}

class LoginControllerImp extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  login() {}

  @override
  toSignUpPage() {
    Get.toNamed(AppRoutes.signUp);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  toForgetPasswordPage() {
    Get.toNamed(AppRoutes.forgetPassword);
    throw UnimplementedError();
  }

  @override
  toHomeScreen() {
    Get.toNamed(AppRoutes.homePage);
    throw UnimplementedError();
  }
}
