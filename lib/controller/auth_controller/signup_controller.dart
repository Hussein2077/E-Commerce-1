import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();

  toLogInPage();
}
class SignUpControllerImp extends SignUpController{
late TextEditingController userNameController;
late TextEditingController emailController;
late TextEditingController phoneController;
late TextEditingController passwordController;

  @override
  signUp() {

  }

  @override
  toLogInPage() {
    Get.toNamed(AppRoutes.login);
  }
  @override
  void onInit() {
userNameController=TextEditingController();
emailController=TextEditingController();
phoneController=TextEditingController();
passwordController=TextEditingController();


super.onInit();
  }
  @override
  void dispose() {
userNameController.dispose();
emailController.dispose();
phoneController.dispose();
passwordController.dispose();


super.dispose();
  }

}