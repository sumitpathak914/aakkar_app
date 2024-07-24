import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../color/color.dart';
import '../../../util/constants.dart';
import '../../../util/textstyle.dart';

class ActiveAllProduct extends StatelessWidget {
  const ActiveAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        height: 159,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: HexColor("#4C3F35")),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/active_product.png",
                height: 50,
              ),
              h30,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Products",
                          style: commansmollwhite,
                        ),
                        h5,
                        Row(
                          children: [
                            Text(
                              "18",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: kwhite,
                                  fontWeight: FontWeight.w800),
                            ),
                            w10,
                            Text(
                              "+0.00%",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: kwhite,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Active Products",
                          style: commansmollwhite,
                        ),
                        h5,
                        Row(
                          children: [
                            Text(
                              "16",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: kwhite,
                                  fontWeight: FontWeight.w800),
                            ),
                            w10,
                            Text(
                              "+0.00%",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: kwhite,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
