
import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:ecommerce_wael/core/constant/routes.dart';
import 'package:ecommerce_wael/veiw/widgets/my_auth_button.dart';
import 'package:ecommerce_wael/veiw/widgets/my_auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
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
                                        onChanged: () {
                                        },
                                        controller: emailController,
                                        hintText: "hello@gmail.com",
                                        obscureText: false,
                                        prefixIcon: const Icon(Icons.mail_outline),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(8, 0, 0, 0),
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
                                        controller: passwordController,
                                        hintText: "**************",
                                        obscureText: true,
                                        prefixIcon: const Icon(Icons.lock_outline),
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
                                        controller: passwordController,
                                        hintText: "**************",
                                        obscureText: true,
                                        prefixIcon: const Icon(Icons.lock_outline),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      MyButton(
                                        onPressed: (){},
                                        buttonText: 'Sign Up',
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(35, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Text("Do you have an account? ",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: HexColor("#8d8d8d"),
                                                )),
                                            TextButton(
                                                child:const Text(
                                                  "Log In",
                                                  style: TextStyle(
                                                      color: AppColor.primaryColor
                                                  ),

                                                ),
                                                onPressed: () {
                                                  Get.toNamed(AppRoutes.login);
                                                }
                                            ),

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
