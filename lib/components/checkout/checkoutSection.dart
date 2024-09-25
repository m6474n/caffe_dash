import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(height: height,
    width: width*0.25,
  color: whiteColor,);
  }
}