import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:ecommerce_wael/core/localization/changelocale.dart';
import 'package:ecommerce_wael/veiw/widgets/CustomChangeLanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController>{
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const  SizedBox(height: 150,),
            // Text(
            //   "1".tr,
            //   style:
            //       Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 30),
            // ),
            const SizedBox(height: 50),
            CustomChangeLanguage(
              text: 'Arabic',
              onPressed: () {controller.changeLang("ar  ");
              Get.toNamed(AppRoutes.onBoarding) ; },
            ),
            const SizedBox(height: 30),
            CustomChangeLanguage(
              text: 'English',
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoutes.onBoarding) ;
              },
            ),
          ],
        ),
      ),
    );
  }
}
