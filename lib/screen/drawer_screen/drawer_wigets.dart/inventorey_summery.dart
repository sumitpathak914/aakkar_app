import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InvantoreySummarey extends StatelessWidget {
  const InvantoreySummarey({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/management.png",
                    height: 50,
                  ),
                  w10,
                  Text(
                    "Inventory Summary",
                    style: TextStyle(
                        color: HexColor("#8B8D97"),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              h20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Products",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "115",
                          style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 1,
                      color: HexColor("#D4D4D4"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Products",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "115",
                          style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        )
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
