import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CustomField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const CustomField({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
 

    return Container(
constraints: BoxConstraints(minWidth: 200, maxWidth: 305),
      child: TextFormField(        controller: controller,
        decoration: InputDecoration(
         
          filled: true,
          fillColor: Colors.transparent,
          hintText: "Enter ${label.toLowerCase()}",
          hoverColor: Colors.transparent,
          hintStyle: TextStyle(fontSize: 14, color: description, fontWeight: FontWeight.w400),
          focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: secondaryColor),
              borderRadius: BorderRadius.circular(12)
            ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: secondaryColor),
              borderRadius: BorderRadius.circular(12)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: secondaryColor),
              borderRadius: BorderRadius.circular(12)
            )
        ),
      ),
    );
  }
}