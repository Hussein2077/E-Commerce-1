import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';
import '../../data/datsource/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImplement> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 60),
          Image.asset(
            onBoardingList[i].image!,
            width: 200,
            height: 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.grey,
                height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
