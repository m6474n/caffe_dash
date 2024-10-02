import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos/components/charts/customLineChart.dart';
import 'package:pos/utility/constants.dart';

class CustomLineChartWidget extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const CustomLineChartWidget({super.key, required this.data, });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondaryColor),
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sales Today",
                      style: TextStyle(fontSize: 12, color: description),
                    ),
                    Row(
                      children: [
                        const Text(
                          "12.32K",
                          style: TextStyle(
                              fontSize: 24,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        const Text(
                          "vs Yesterday",
                          style: TextStyle(fontSize: 16, color: description),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            padding: EdgeInsets.all(16),
            child: CustomLineChart(data: data, shoLables: true,)
          ),
        ],
      ),
    );
  }
}
