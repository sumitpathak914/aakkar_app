import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/screen/dashboard/drawer_items.dart';
import 'package:aakkar_app/screen/dashboard/home_provider.dart';
import 'package:aakkar_app/screen/dashboard/wigets/active_all_products.dart';
import 'package:aakkar_app/screen/dashboard/wigets/card.dart';
import 'package:aakkar_app/screen/dashboard/wigets/management_card.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvoder? eProvider;

  void init() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //  await eProvider?.registerListApi(context);
    });
  }

  double _containerSize = 40.0;

  void _toggleContainerSize() {
    setState(() {
      _containerSize = _containerSize == 40.0 ? 80.0 : 40.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: Consumer<HomeProvoder>(builder: (context, ePv, child) {
        return Material(
          color: kwhite,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  h10,
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                          //  _toggleContainerSize();
                        },
                        child: Container(
                          //  duration: const Duration(milliseconds: 300),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kscoundprimary),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/menu.png"),
                          ),
                        ),
                      ),
                      w10,
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                      )
                    ],
                  ),
                  h10,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          h10,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Cards(
                                  colorscard: Colors.green,
                                  image: "assets/images/factorey.png",
                                  number: "54",
                                  persantage: "+0.00%",
                                  name: "umber of Factories",
                                ),
                              ),
                              w10,
                              Expanded(
                                child: Cards(
                                  colorscard: Colors.red,
                                  image: "assets/images/shopsicon.png",
                                  number: "54",
                                  persantage: "+0.00%",
                                  name: "Number of Shops",
                                ),
                              ),
                            ],
                          ),
                          h10,
                          const ActiveAllProduct(),
                          h10,
                          Text(
                            "Order Management",
                            style: TextStyle(
                                color: kcho,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          h10,
                          ManagementCard(
                            orders: ePv.orders,
                            title: "Total Orders",
                          ),
                          h10,
                          ManagementCard(
                            orders: ePv.totalreturns,
                            title: "Total Returns",
                          ),
                          h20,
                          SizedBox(
                            height: 200,
                            child: Card(
                              elevation: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: BarChart(
                                  BarChartData(
                                    alignment: BarChartAlignment.spaceAround,
                                    barGroups: [
                                      BarChartGroupData(x: 1, barRods: [
                                        BarChartRodData(
                                            fromY: 0, toY: 8, color: kblack)
                                      ]),
                                      BarChartGroupData(x: 2, barRods: [
                                        BarChartRodData(
                                            fromY: 0, toY: 10, color: kblack)
                                      ]),
                                      BarChartGroupData(x: 3, barRods: [
                                        BarChartRodData(
                                            fromY: 0, toY: 14, color: kblack)
                                      ]),
                                      BarChartGroupData(x: 4, barRods: [
                                        BarChartRodData(
                                            fromY: 0, toY: 15, color: kblack)
                                      ]),
                                      BarChartGroupData(x: 5, barRods: [
                                        BarChartRodData(
                                            fromY: 0, toY: 13, color: kblack)
                                      ]),
                                      BarChartGroupData(x: 6, barRods: [
                                        BarChartRodData(
                                            fromY: 0, toY: 10, color: kblack)
                                      ]),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class DashboardSummaryCard extends StatelessWidget {
  final String title;
  final String count;

  const DashboardSummaryCard(
      {super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Adjust width as needed
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 8),
              Text(
                count,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
