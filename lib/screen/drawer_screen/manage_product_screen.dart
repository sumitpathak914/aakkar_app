import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/screen/drawer_screen/drawer_wigets.dart/all_products.dart';
import 'package:aakkar_app/screen/drawer_screen/drawer_wigets.dart/drawer_app_bar.dart';
import 'package:aakkar_app/screen/drawer_screen/drawer_wigets.dart/inventorey_summery.dart';
import 'package:aakkar_app/screen/drawer_screen/mange_product/add_new_product.dart';
import 'package:aakkar_app/util/comman_textfield.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:flutter/material.dart';

class ManageProductScreen extends StatelessWidget {
  const ManageProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kwhite,
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: kwhite,
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        h10,
                        const DrawerAppBar(
                          title: "Manage Products",
                        ),
                        h20,
                        const InvantoreySummarey(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              child: CommanTextfield(
                                searchbarshow: true,
                                title: '',
                                hinttext: "Search Product",
                              ),
                            ),
                            w20,
                            Column(
                              children: [
                                h30,
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: kgrey,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Image.asset("assets/images/filter.png"),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        h10,
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: TabBar(
                            dividerHeight: 0,
                            indicatorPadding: EdgeInsets.zero,
                            //dividerColor: Colors.pink,
                            tabAlignment: TabAlignment.center,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.black,
                            indicatorWeight: 2,
                            tabs: [
                              Tab(text: 'All Products (150)'),
                              Tab(text: 'Drafted (06)'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView.builder(
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: AllProducts(),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView.builder(
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: AllProducts(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 200,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 29),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const AddNewProduct()));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: kprimaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: kwhite,
                                    ),
                                    Text(
                                      "Add New Product",
                                      style: TextStyle(
                                          color: kwhite, fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final String content;

  const TabContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(content),
          const SizedBox(height: 20),
          Container(
            height: 20,
            color: Colors.grey, // Example color for the container
          ),
        ],
      ),
    );
  }
}
