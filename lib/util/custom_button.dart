import 'package:flutter/material.dart';
import 'package:ulavan/constants/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.press});

  final double height;
  final double width;
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: secondary),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
