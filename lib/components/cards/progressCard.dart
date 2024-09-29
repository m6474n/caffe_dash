import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pos/utility/constants.dart';

class ProgreeCard extends StatelessWidget {
  final int order_count;
  final String title;

  const ProgreeCard(
      {super.key,
      required this.order_count,
      required this.title,
 });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(18),
   width:   double.infinity,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          CircularPercentIndicator(
            lineWidth: 14,
            animation: true,
            animationDuration: 500,
            curve: Curves.linear,
            
            progressColor: primaryColor,
            radius: 42,
            backgroundColor: secondaryColor,
            center: Text(
              order_count.toString(),
              style: TextStyle(fontSize: 16),
            ),
percent: order_count <= 10 
    ? (order_count / 10) 
    : order_count < 20 
        ? (order_count / 20) 
        : order_count < 30 
            ? (order_count / 30) 
            : order_count < 40 
                ? (order_count / 40) 
                : (order_count / 50),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "Total number of ${title.split(" ")[0].toLowerCase()} order of today.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: description),
              ),
            ],
          )
        ],
      ),
    );
  }
}
