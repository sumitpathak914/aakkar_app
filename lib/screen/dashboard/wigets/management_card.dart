import 'package:aakkar_app/color/color.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ManagementCard extends StatelessWidget {
  final List<Map<String, String>> orders;

  const ManagementCard({super.key, required this.orders, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kwhite,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/icon-2.png",
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      color: kcho,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "This Week",
                        style: TextStyle(
                          fontSize: 15,
                          color: HexColor('#BEC0CA'),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: HexColor("#BEC0CA"),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 70, // Adjust height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            orders[index]['title']!,
                            style: TextStyle(
                              color: HexColor("#8B8D97"),
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            orders[index]['count']!,
                            style: TextStyle(
                              color: kblack,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
