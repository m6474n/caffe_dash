import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CustomLineChart extends StatelessWidget {
    final List<Map<String, dynamic>> data;
   final bool? shoLables;
  const CustomLineChart({super.key, required this.data,this.shoLables = false});
 List<FlSpot> _generateSpots() {
    return data.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, dynamic> point = entry.value;
      return FlSpot(index.toDouble(), point['sale'].toDouble());
    }).toList();
  }

  Color getLineTooltipColor(FlSpot spot) {
    // Customize the color based on the spot or other conditions
    return primaryColor; // Example: return primary color for all tooltips
  }
  @override
  Widget build(BuildContext context) {
    return LineChart(
              LineChartData(
                minX: 0,
                maxX:  data.length.toDouble() - 1,
                minY: 0,
                maxY:  data
                    .map((point) => point['sale'])
                    .reduce((a, b) => a > b ? a : b)
                    .toDouble(),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles:shoLables! , reservedSize: 40, interval: 20),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: shoLables!,
                      interval: 1, // Adjust this value to control label frequency
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        if (index >= 0 && index <  data.length) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text( data[index]['date'],
                                style: TextStyle(fontSize: 10)),
                          );
                        }
                        return Container();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: shoLables,
                  border: Border.all(width: 1, color: secondaryColor),
                ),
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
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: primaryColor,
                    barWidth: 3,
                    belowBarData: BarAreaData(
                      gradient: lightGradientColor,
                      show: true,
                    ),
                    isCurved: true,
                    dotData: FlDotData(show: false),
                    spots: _generateSpots(),
                  ),
                ],
              ),
            );
  }
}