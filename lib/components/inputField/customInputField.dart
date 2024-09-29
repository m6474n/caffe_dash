import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CustomInputField extends StatelessWidget {
 final  String title;
 final Widget? prefix;
final TextEditingController controller;
  const CustomInputField({super.key, required this.title, required this.controller,  this.prefix,});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: primaryColor, fontSize: 16),),
          SizedBox(height: 6,),
          TextFormField(
            validator: (value){
              return value == null || value.isEmpty ? "Enter valid ${title.toLowerCase()}": null; 
            },
            controller: controller,
            decoration: InputDecoration(
              prefix: prefix,
              filled: true,
              fillColor: Colors.transparent,
              hintText: "Enter ${title.toLowerCase()}",
              hintStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
            ),
          ),
        ],
      ),
    );
  }
}