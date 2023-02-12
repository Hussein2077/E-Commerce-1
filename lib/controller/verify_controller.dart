import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyController extends GetxController{
  verify();
  toResetPasswordPage();

}
class VerifyControllerImp extends VerifyController{

  @override
  verify() {
  }
  @override
  toResetPasswordPage() {
    Get.toNamed(AppRoutes.resetPassword);
  }
}