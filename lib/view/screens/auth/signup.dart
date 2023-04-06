import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/signup_controller.dart';
import '../../widgets/auth_widget/my_auth_button.dart';
import '../../widgets/auth_widget/my_auth_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor("#fed8c3"),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
            shrinkWrap: true,
            reverse: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 600,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: HexColor("#ffffff"),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sign Up",
                                  style: GoogleFonts.poppins(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#4f4f4f"),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 0, 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "User Name",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: HexColor("#8d8d8d"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      MyTextField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter you Name!';
                                          }
                                        },
                                        onChanged: () {},
                                        controller:
                                            controller.userNameController,
                                        hintText: "User Name",
                                        obscureText: false,
                                        prefixIcon: const Icon(Icons.person),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Email",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: HexColor("#8d8d8d"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      MyTextField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter you Email!';
                                          }
                                        },
                                        onChanged: () {},
                                        controller: controller.emailController,
                                        hintText: "hello@gmail.com",
                                        obscureText: false,
                                        prefixIcon:
                                            const Icon(Icons.mail_outline),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 0, 0),
                                        child: Text(
                                          '',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Phone",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: HexColor("#8d8d8d"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      MyTextField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter you Phone!';
                                          }
                                        },
                                        onChanged: () {},
                                        controller: controller.phoneController,
                                        hintText: "Phone Number",
                                        obscureText: false,
                                        prefixIcon: const Icon(Icons.phone),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Password",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: HexColor("#8d8d8d"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      MyTextField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter you Password!';
                                          }
                                        },
                                        controller:
                                            controller.passwordController,
                                        hintText: "**************",
                                        obscureText: true,
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Confirm Password",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: HexColor("#8d8d8d"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      MyTextField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter you Password again!';
                                          }
                                        },
                                        controller:
                                            controller.passwordController,
                                        hintText: "**************",
                                        obscureText: true,
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      MyButton(
                                        onPressed: () {},
                                        buttonText: 'Sign Up',
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            35, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Text("Do you have an account? ",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: HexColor("#8d8d8d"),
                                                )),
                                            TextButton(
                                                child: const Text(
                                                  "Log In",
                                                  style: TextStyle(
                                                      color: AppColor1
                                                          .primaryColor),
                                                ),
                                                onPressed: () {
                                                  controller.toLogInPage();
                                                }),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -253),
                        child: Image.asset(
                          'assets/images/plants2.png',
                          scale: 1.5,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
