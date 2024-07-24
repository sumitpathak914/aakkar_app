import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/screen/drawer_screen/drawer_wigets.dart/drawer_app_bar.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:aakkar_app/util/custom_dropdown.dart';
import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          ),
          // If you want to add dividers between items, uncomment the following line:
          // const DropdownMenuItem<String>(
          //   enabled: false,
          //   child: Divider(),
          // ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomItemsHeights() {
    return List<double>.filled(items.length, 40);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kwhite,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                h10,
                const DrawerAppBar(
                  title: "Add New Product",
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        h10,
                        const Text(
                          'Select Option',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        h10,
                        const Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        h10,
                        Center(
                          child: CustomDropdown(
                            items: items,
                            hint: 'Choose a option',
                            selectedValue: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                        h10,
                        const Text(
                          "Sub- Category",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        h10,
                        Center(
                          child: CustomDropdown(
                            items: items,
                            hint: 'Choose a option',
                            selectedValue: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                        h20,
                        const Text(
                          "Add Supplier Details",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        h20,
                        const Text(
                          "Sub- Category",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        h10,
                        Center(
                          child: CustomDropdown(
                            items: items,
                            hint: 'Choose a option',
                            selectedValue: selectedValue,
                            onChanged: (String? value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
