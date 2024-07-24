import 'package:aakkar_app/color/color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String hint;
  final String? selectedValue;
  final Function(String?) onChanged;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.hint,
    this.selectedValue,
    required this.onChanged,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          ),
          // Uncomment the following lines if you want to add dividers between items:
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
    return List<double>.filled(widget.items.length, 40);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: HexColor("#F7F7F7")),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            widget.hint,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: _addDividersAfterItems(widget.items),
          value: widget.selectedValue,
          onChanged: widget.onChanged,
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            // width: 200,
          ),
          dropdownStyleData: const DropdownStyleData(
            maxHeight: 200,
          ),
          menuItemStyleData: MenuItemStyleData(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            customHeights: _getCustomItemsHeights(),
          ),
          iconStyleData: IconStyleData(
              openMenuIcon: const Icon(Icons.tab),
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 35,
                color: kblack,
              )),
        ),
      ),
    );
  }
}
