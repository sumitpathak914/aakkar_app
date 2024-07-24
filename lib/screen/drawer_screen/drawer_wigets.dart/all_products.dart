import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: HexColor("#D4D4D4"),
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/star.png",
                  height: 20,
                ),
                w10,
                Row(
                  children: [
                    Text(
                      "Product ID :",
                      style:
                          TextStyle(color: HexColor("#8B8D97"), fontSize: 15),
                    ),
                    w10,
                    Text(
                      "P001",
                      style: TextStyle(color: kblack, fontSize: 15),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset(height: 25, "assets/images/ontoggle.png"),
                    w10,
                    Image.asset(height: 20, "assets/images/dots.png")
                  ],
                )
              ],
            ),
            h10,
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/product.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    w10,
                    const Text(
                      "Sihore Wheat",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.centerLeft,
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      color: kgrey, borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'MRP: ₹120',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            h5,
            Row(
              children: [
                Text(
                  "Supplier :",
                  style: TextStyle(color: HexColor("#8B8D97"), fontSize: 16),
                ),
                w10,
                Text(
                  "Grain Haven",
                  style: TextStyle(color: kblack, fontSize: 16),
                ),
              ],
            ),
            h10,
          ],
        ),
      ),
    );
  }
}
