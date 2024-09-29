
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CustomLineChart extends StatefulWidget {
  const CustomLineChart({super.key});

  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  List dropList = ['weekly', 'monthly'];

  var selectedVal = "monthly";
   Color getLineTooltipColor(FlSpot spot) {
    // Customize the color based on the spot or other conditions
    return primaryColor; // Example: return red color for all tooltips
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1 ,color: secondaryColor),
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
   
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
                      style: TextStyle( fontSize: 12, color:description),
                    ),
                    
                    Row(
                      children: [
                        const Text(
                          "12.32K",
                          style: TextStyle( fontSize: 24, color:primaryColor, fontWeight: FontWeight.bold),
                        ),SizedBox(width: 8,),
                        Container(height: 16,width: 16, decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(30)),child: Center(child: Icon(Icons.arrow_upward, color: Colors.white, size:12 ,)),)
                       ,SizedBox(width: 8,), const Text(
                          "vs Yesterday",
                          style: TextStyle( fontSize: 16, color:description),
                        ),
                      ],
                    ),
                  ],
                ),
                // Container(
                //   width: 120,
                //   child: CustomDropdown(
                //       decoration: CustomDropdownDecoration(
                //           closedBorder: Border.all(color: secondaryColor),
                //           hintStyle:
                //               TextStyle(fontFamily: "Inter thin", fontSize: 12),
                //           headerStyle:
                //               TextStyle(fontFamily: "Inter thin", fontSize: 12),
                //           listItemStyle:
                //               TextStyle(fontFamily: "Inter thin", fontSize: 12)),
                //       closedHeaderPadding:
                //           EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                //       items: dropList,
                //       onChanged: (newVal) {
                //         print('newVal: $newVal');
                //         setState(() {
                //           selectedVal = newVal;
                //         });
                //       }),
                // )
              ],
            ),
          ),
     
        Container(
            padding: EdgeInsets.only(top: 18, right: 24),
            child: SizedBox(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: LineChart(
                
                duration: Duration(milliseconds: 500),
                LineChartData(
                  minX: 0,
                  maxX: 11,
                  minY: 0,
                  maxY: 10,
           
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles:SideTitles(
                        reservedSize: 50,
                        showTitles: false,
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      
                      axisNameSize: 24,
                      sideTitles: SideTitles(
                      
                        showTitles: true,
                        maxIncluded: true,
                        reservedSize: 40,
                        interval:selectedVal == "monthly"?  2: 1,
                        
                        getTitlesWidget: (value, meta) {
                          
                          if(selectedVal == 'monthly'){
                            switch (value.toInt()) {
                            case 0:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0, left: 38),
                                child: Text('Jan',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 1:
                               return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Feb',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 2:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Mar',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 3:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Apr',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 4:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('May',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 5:
                               return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Jun',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 6:
                               return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Jul',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 7:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Aug',
                                    style: TextStyle(fontSize: 14)),
                              );
                            case 8:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Sep',
                                    style: TextStyle(fontSize: 14)),);
                            case 9:
                             return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Oct',
                                    style: TextStyle(fontSize: 14)),);
                            case 10:
                             return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Nov',
                                    style: TextStyle(fontSize: 14)),);
                            case 11:
                              return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('Dec',
                                    style: TextStyle(fontSize: 14)),);
                            default:
                               return Padding(
                                padding: const EdgeInsets.only(top:18.0),
                                child: Text('',
                                    style: TextStyle(fontSize: 14)),);
                          }
                          }else{
                            switch (value.toInt()) {
                            case 0:
                              return Text('Mon',
                                  style: TextStyle(fontSize: 12));
                            case 1:
                              return Text('Tue',
                                  style: TextStyle(fontSize: 12));
                            case 2:
                              return Text('Wed',
                                  style: TextStyle(fontSize: 12));
                            case 3:
                              return Text('Thu',
                                  style: TextStyle(fontSize: 12));
                            case 4:
                              return Text('Fri',
                                  style: TextStyle(fontSize: 12));
                            case 5:
                              return Text('Sat',
                                  style: TextStyle(fontSize: 12));
                            case 6:
                              return Text('Sun',
                                  style: TextStyle(fontSize: 12));
                           
                          }
                          return Container();
                          
                          }
                        },
                        
                      ),
                    ),
                    rightTitles:const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40
                      ),
                    ),
                  ),
                  borderData: FlBorderData(border: Border.all(width: 1, color: secondaryColor)),
                  gridData: FlGridData(
                    drawHorizontalLine: true,
                    drawVerticalLine: false,
                  ),
                 lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: getLineTooltipColor,
              tooltipRoundedRadius: 8,
              tooltipPadding: const EdgeInsets.all(8),
              getTooltipItems: (List<LineBarSpot> touchedSpots) {
                return touchedSpots.map((LineBarSpot touchedSpot) {
                  return LineTooltipItem(
                    '${touchedSpot.y}',
                    const TextStyle(color: Colors.white),
                  );
                }).toList();})),
                  lineBarsData: [
                    LineChartBarData(

                     color: primaryColor,
                     barWidth: 3,
                      
                      belowBarData: BarAreaData(gradient: lightGradientColor, show: true),
          
                      isCurved: true,
                      dotData: FlDotData(show: false),
                      spots: [
                        FlSpot(0, 4),
                        FlSpot(1, 4),
                        FlSpot(2, 2),
                        FlSpot(3, 5.2),
                        FlSpot(4.3, 3),
                        FlSpot(5, 6),
                        FlSpot(6.2, 3.5),
                        FlSpot(7, 2),
                        FlSpot(8, 7),
                        FlSpot(9, 5),
                        FlSpot(10, 9),
                        FlSpot(11, 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}