import 'package:flutter/material.dart';

import '../color/color.dart';

class CommanButtom extends StatelessWidget {
  const CommanButtom({super.key, this.name});
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 56,
      decoration: BoxDecoration(
        color: kscoundprimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        name,
        style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: kwhite),
      ),
    );
  }
}
