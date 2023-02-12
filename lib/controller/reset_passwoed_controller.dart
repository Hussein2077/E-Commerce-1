import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetController extends GetxController{
  reset();
  toSuccessPage();

}
class ResetControllerImp extends ResetController{
late TextEditingController passwordController;
late TextEditingController rePasswordController;

  @override
  reset() {
  }
  @override
  toSuccessPage() {
  }
  @override
  void onInit() {
passwordController=TextEditingController();
rePasswordController=TextEditingController();
super.onInit();
  }
  @override
  void dispose() {
passwordController.dispose();
rePasswordController.dispose();
super.dispose();
  }
}