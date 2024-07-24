import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/screen/auth/register_screen.dart';
import 'package:aakkar_app/screen/dashboard/home_screen.dart';
import 'package:aakkar_app/util/comman_textfield.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:aakkar_app/util/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../util/comman_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kwhite,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kwhite,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                title: 'Login',
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        h30,
                        Text(
                          "LOGIN",
                          style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 36,
                              fontFamily: 'Poppins-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              "Hi, Welcome Back!",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            Image.asset(
                              "assets/images/hand.png",
                              height: 30,
                            )
                          ],
                        ),
                        h30,
                        const CommanTextfield(
                          title: "Email",
                          hinttext: "Email id",
                        ),
                        h20,
                        const CommanTextfield(
                          visibility: true,
                          title: "Password",
                          hinttext: "Password",
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(color: HexColor('#0855FF')),
                              )),
                        ),
                        h50,
                        h20,
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          child: const CommanButtom(
                            name: "LOGIN",
                          ),
                        ),
                        h10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "New to Aakar?",
                              style: TextStyle(
                                  color: kblack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            w5,
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()),
                                );
                              },
                              child: Text(
                                "Register Now",
                                style: TextStyle(
                                    color: HexColor('#0855FF'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
