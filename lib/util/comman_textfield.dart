import 'package:aakkar_app/color/color.dart';
import 'package:aakkar_app/util/constants.dart';
import 'package:aakkar_app/util/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CommanTextfield extends StatefulWidget {
  const CommanTextfield(
      {super.key,
      this.visibility = false,
      this.title,
      this.hinttext,
      this.searchbarshow = false});
  final bool visibility;
  final title;
  final hinttext;
  final bool searchbarshow;

  @override
  State<CommanTextfield> createState() => _CommanTextfieldState();
}

class _CommanTextfieldState extends State<CommanTextfield> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: commansmollfont,
        ),
        h10,
        Container(
          height: 53,
          decoration: BoxDecoration(
              color: kgrey, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                widget.searchbarshow
                    ? const Icon(
                        Icons.search,
                        size: 30,
                      )
                    : const SizedBox(),
                w10,
                Expanded(
                  child: TextFormField(
                    obscureText: widget.visibility ? !visible : false,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: HexColor("#A5A5A5"),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      hintText: widget.hinttext,
                    ),
                  ),
                ),
                widget.visibility
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        child: Icon(
                          visible ? Icons.visibility : Icons.visibility_off,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
