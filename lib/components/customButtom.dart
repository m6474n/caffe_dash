import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double titleSize;
  final double letterSpacing;
  const CustomButton({super.key, required this.title, required this.onTap, this.titleSize = 16, this.letterSpacing = 1});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: Text(title, style: TextStyle(color:whiteColor, fontSize: titleSize, letterSpacing:letterSpacing ),),
        )),
      ),
    );
  }
}