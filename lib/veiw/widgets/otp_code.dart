import 'package:ecommerce_wael/controller/verify_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
class CustomOtp extends StatelessWidget {
   CustomOtp({Key? key}) : super(key: key);

  Color accentPurpleColor =const Color(0xFF6A53A1);
  Color primaryColor =const Color(0xFF121212);
  Color accentPinkColor =const Color(0xFFF99BBD);
  Color accentDarkGreenColor =const Color(0xFF115C49);
  Color accentYellowColor =const Color(0xFFFFB612);
  Color accentOrangeColor =const Color(0xFFEA7A3B);
  @override
  Widget build(BuildContext context) {
    VerifyControllerImp controller = Get.put(VerifyControllerImp());

    TextStyle? createStyle(Color color) {
      ThemeData theme = Theme.of(context);
      return theme.textTheme.displaySmall?.copyWith(color: color);
    }
    List<TextStyle?>  otpTextStyles = [
      createStyle(accentPurpleColor),
      createStyle(accentYellowColor),
      createStyle(accentDarkGreenColor),
      createStyle(accentOrangeColor),
      createStyle(accentPinkColor),
      createStyle(accentPurpleColor),
    ];
    return  OtpTextField(
      numberOfFields: 6,
      borderColor: accentPurpleColor,
      styles: otpTextStyles,
      focusedBorderColor: accentPurpleColor,
      showFieldAsBox: false,
      borderWidth: 4.0,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here if necessary
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
controller.toResetPasswordPage();
      },
    );
  }
}
