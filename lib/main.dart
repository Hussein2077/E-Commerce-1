
import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:ecommerce_wael/core/localization/changelocale.dart';
import 'package:ecommerce_wael/core/localization/translation.dart';
import 'package:ecommerce_wael/core/service/services.dart';
import 'package:ecommerce_wael/routes.dart';
import 'package:ecommerce_wael/test/core/app_color.dart';
import 'package:ecommerce_wael/test/core/app_theme.dart';
import 'package:ecommerce_wael/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller =   Get.put(LocaleController()) ;
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,

      theme: AppTheme.lightTheme,
      home: const Language(),
      routes: routes,
    );
  }
}