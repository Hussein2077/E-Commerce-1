import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  forget();
  toVerifyPage();
}
class ForgetPasswordImp extends ForgetPasswordController{
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  forget() {

  }

  @override
  toVerifyPage() {
    Get.toNamed(AppRoutes.verifyCode);
  }
  @override
  void onInit() {
    emailController=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }
}