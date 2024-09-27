import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CalculationContainer extends StatelessWidget {
  const CalculationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('Subtotal', style: TextStyle(fontSize: 14, color: headingColor),),
          Text('\$12.098',style: TextStyle(fontSize: 16, color: headingColor),)
        ],),
      ),Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('Tax(10%)', style: TextStyle(fontSize: 14, color: description),),
          Text('\$1.061',style: TextStyle(fontSize: 16, color: description),)
        ],),
      ),Divider(
color: secondaryColor,
      ),
      
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('Total',style: TextStyle(fontSize: 16, color: primaryColor, fontWeight: FontWeight.bold),),
          Text('\$13.098',style: TextStyle(fontSize: 20, color: primaryColor, fontWeight: FontWeight.bold),)
        ],),
      )

    ],),);
  }
}
