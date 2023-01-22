import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../widgets/CustomDotControllerOnBoarding.dart';
import '../widgets/custombotton.dart';
import '../widgets/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImplement());
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        const Expanded(
          flex: 3,
          child: CustomSlider(),
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
