import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/screen/drawer_screen/manage_product_screen.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:aakkar_app/util/drwer_items.dart';
import 'package:flutter/material.dart';
// Make sure to import the DrawerItem class

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kwhite,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/cancel.png",
                            height: 20,
                          ),
                        )),
                    h30,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kprimaryColor),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                fit: BoxFit.fill,
                                "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                          ),
                        ),
                        w10,
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jhon Doe",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Admin",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Column(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          h20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              color: kblack,
            ),
          ),
          h20,
          DrawerItem(
            icon: "assets/images/1.png",
            title: 'Manage Products',
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ManageProductScreen()));
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/2.png",
            title: 'Order Management',
            onTap: () {
              // Navigate to the order management screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/3.png",
            title: 'Dispatch Management',
            onTap: () {
              // Navigate to the dispatch management screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/4.png",
            title: 'Commission Management',
            onTap: () {
              // Navigate to the commission management screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/5.png",
            title: 'Transaction Records',
            onTap: () {
              // Navigate to the transaction records screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/6.png",
            title: 'Factory',
            onTap: () {
              // Navigate to the factory screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/7.png",
            title: 'Dealer/ Shops',
            onTap: () {
              // Navigate to the dealer/shops screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/8.png",
            title: 'Quotation',
            onTap: () {
              // Navigate to the quotation screen
            },
          ),
          h20,
          DrawerItem(
            icon: "assets/images/9.png",
            title: 'Log Out',
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}
