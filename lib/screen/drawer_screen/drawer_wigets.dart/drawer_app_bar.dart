import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:flutter/material.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: CircleAvatar(
            radius: 18,
            backgroundColor: kblack,
            child: CircleAvatar(
              backgroundColor: kwhite,
              radius: 17,
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        w10,
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kgrey),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/notification.png',
              height: 10,
              width: 10,
            ),
          ),
        )
      ],
    );
  }
}
