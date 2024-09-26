import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      cursorColor: primaryColor,
    
      decoration:InputDecoration(
        filled: true,
        fillColor: whiteColor,
        hintText: "Seach Anything",
        focusColor: whiteColor,
        hoverColor: whiteColor,
        
        hintStyle: TextStyle(color: hintColor, fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 1.3),
        contentPadding: EdgeInsets.symmetric(horizontal: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset('assets/Search.png',height: 24,),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none
        ), 
      ),
    );
  }
}