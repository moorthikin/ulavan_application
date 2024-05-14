import 'package:flutter/material.dart';
import 'package:ulavan/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.heading,
      //  required this.helperText,
      required this.prefix,
      this.isVisible = false});

  //String helperText;
  Icon prefix;
  bool isVisible;
  String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: secondary, borderRadius: BorderRadius.circular(18)),
            height: 55,
            width: 500,
            child: TextFormField(
                decoration: InputDecoration(
              border: InputBorder.none,
              //  helperText: helperText,
              prefixIcon: prefix,
            )),
          ),
        ],
      ),
    );
  }
}
