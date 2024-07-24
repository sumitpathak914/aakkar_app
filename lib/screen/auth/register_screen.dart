import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/util/comman_textfield.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:aakkar_app/util/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../util/comman_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                title: 'Register',
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
                          "REGISTER",
                          style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              "Fill below details!",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        h10,
                        Text(
                          "Factory Information",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        h10,
                        const CommanTextfield(
                          title: "Factory Name",
                          hinttext: "Name",
                        ),
                        h20,
                        const CommanTextfield(
                          title: "Contact Person",
                          hinttext: "Name",
                        ),
                        h20,
                        const CommanTextfield(
                          title: "Contact No",
                          hinttext: "+91 ---------",
                        ),
                        h20,
                        const CommanTextfield(
                          title: "Email ID",
                          hinttext: "Email id",
                        ),
                        h20,
                        const CommanTextfield(
                          title: "Website (if any)",
                          hinttext: "Website",
                        ),
                        h20,
                        Text(
                          "Location Information",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        h10,
                        const CommanTextfield(
                          title: "Factory Address",
                          hinttext: "Address",
                        ),
                        h20,
                        const CommanTextfield(
                          title: "City",
                          hinttext: "city",
                        ),
                        h20,
                        Text(
                          "Business Information",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        h10,
                        const CommanTextfield(
                          title: "GST Number",
                          hinttext: "22AAAAA0000A1Z5",
                        ),
                        h20,
                        const CommanTextfield(
                          title: "FASSAI Number",
                          hinttext: "12216017000287",
                        ),
                        h20,
                        const CommanButtom(
                          name: "REGISTER",
                        ),
                        h10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have been to Aakar?",
                              style: TextStyle(
                                  color: kblack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            w5,
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Login Now",
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
