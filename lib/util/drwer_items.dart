import 'package:aakkar_app/color/color.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final icon;
  final String title;
  final VoidCallback onTap;

  const DrawerItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 24,
            ),
            const SizedBox(width: 20.0),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  color: title == 'Log Out' ? Colors.red : kscoundprimary),
            ),
          ],
        ),
      ),
    );
  }
}
