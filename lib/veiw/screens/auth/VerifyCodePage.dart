import 'package:ecommerce_wael/controller/login_controller.dart';
import 'package:ecommerce_wael/veiw/widgets/my_auth_button.dart';
import 'package:ecommerce_wael/veiw/widgets/my_auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
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
                        height: 535,
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
                                  "Verify Code",
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
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      MyButton(
                                        onPressed: () {},
                                        buttonText: 'Check',
                                      ),
                                      const SizedBox(
                                        height: 12,
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
