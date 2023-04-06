import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomChangeLanguage extends StatelessWidget {
  const CustomChangeLanguage({Key? key, required this.text, this.onPressed})
      : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: 150,
      decoration: const BoxDecoration(
          color: AppColor1.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
