import 'package:flutter/material.dart';

class HomeProvoder extends ChangeNotifier {
  List<Map<String, dynamic>> myList = [
    {
      "name": "Number of Factories",
      "factoreynumber": "54",
      "persantage": "+0.00%",
      'icon': "assets/images/factorey.png"
    },
    {
      "name": "Number of Shops",
      "factoreynumber": "162",
      "persantage": "+0.00%",
      'icon': "assets/images/shopsicon.png"
    },
  ];

  final List<Map<String, String>> orders = [
    {
      "title": "All Orders",
      "count": "159",
    },
    {
      "title": "Pending",
      "count": "45",
    },
    {
      "title": "Dispatched",
      "count": "114",
    },
    {
      "title": "Completed",
      "count": "114",
    },
  ];
  final List<Map<String, String>> totalreturns = [
    {
      "title": "Pending Returns",
      "count": "05",
    },
    {
      "title": "Rejected",
      "count": "02",
    },
    {
      "title": "Refunded",
      "count": "01",
    },
  ];
}
