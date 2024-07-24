import 'package:aakkar_app/util/textstyle.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/backarrow.png",
                height: 40,
              ),
            ),
            w10,
            Text("$title", style: smallFont)
          ],
        ),
      ),
    );
  }
}
