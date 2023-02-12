
import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:ecommerce_wael/view/widgets/CustomDotControllerOnBoarding.dart';
import 'package:ecommerce_wael/view/widgets/custombotton.dart';
import 'package:ecommerce_wael/view/widgets/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImplement()) ;
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}