import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      this.image,
      this.name,
      this.number,
      this.persantage,
      required this.colorscard});
  final image;
  final name;
  final number;
  final persantage;
  final Color colorscard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorscard,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 50,
            ),
            h20,
            h5,
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 15, color: kwhite),
            ),
            h10,
            Row(
              children: [
                Text(
                  number,
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 24, color: kwhite),
                ),
                w10,
                Text(
                  persantage,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12, color: kwhite),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
