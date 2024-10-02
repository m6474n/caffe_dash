import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pos/components/charts/customLineChart.dart';
import 'package:pos/components/charts/lineChart.dart';
import 'package:pos/utility/constants.dart';

class ProgreeCard extends StatelessWidget {
  final int order_count;
  final String title;

  const ProgreeCard({
    super.key,
    required this.order_count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
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
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: description),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TopStatBar extends StatelessWidget {
  var data;
   TopStatBar({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          border: Border.all(color: secondaryColor),
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Finished Projects",style: TextStyle(color: primaryColor, fontWeight: FontWeight.w400, fontSize: 14),),
                    Text("\$ 1234",style: TextStyle(color: headingColor, fontWeight: FontWeight.w500, fontSize: 18),),
                    RichText(
                        text: TextSpan(
                            text: "%18",
                                                    style: TextStyle(color: Colors.green),

                            children: [TextSpan(text: "form last week",style: TextStyle(color: description),)]))
                  ],
                )),
                Expanded(
                    child: Container(height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: CustomLineChart(data:data),
                  ),
                ))
              ],
            ),
          ),
          Container(height: 50, decoration: BoxDecoration(border: Border.all(width: 0.5,color: primaryColor)),),
                    SizedBox(width: 24,),

          Expanded(
              child: Container(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Events", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w400, fontSize: 14),),
                Text("32", style: TextStyle(color: headingColor, fontWeight: FontWeight.w500, fontSize: 18),),
                RichText(
                    text: TextSpan(
                        text: "%18 ",
                        style: TextStyle(color: Colors.green),
                        children: [TextSpan(text: "form last week", style: TextStyle(color: description),)]))
              ],
            ),
          )),
          Container(height: 50, decoration: BoxDecoration(border: Border.all(width: 0.5,color: primaryColor)),),
          SizedBox(width: 24,),

          Expanded(
              child: Container(
            child: Column
            ( mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Hours",style: TextStyle(color: primaryColor, fontWeight: FontWeight.w400, fontSize: 14),),
                Text("32",style: TextStyle(color: headingColor, fontWeight: FontWeight.w500, fontSize: 18),),
                RichText(
                    text: TextSpan(
                        text: "%18",
                                                style: TextStyle(color: Colors.green),

                        children: [TextSpan(text: "form last week",style: TextStyle(color: description),)]))
              ],
            ),
          )),
          Container(height: 50, decoration: BoxDecoration(border: Border.all(width: 0.5,color: primaryColor)),),
          SizedBox(width: 24,),

          Expanded(
              child: Container(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Focus Time",style: TextStyle(color: primaryColor, fontWeight: FontWeight.w400, fontSize: 14),),
                Text("32",style: TextStyle(color: headingColor, fontWeight: FontWeight.w500, fontSize: 18),),
                RichText(
                    text: TextSpan(
                        text: "%18",
                                                style: TextStyle(color: Colors.green),

                        children: [TextSpan(text: "form last week",style: TextStyle(color: description),)]))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
