import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/cards/progressCard.dart';
import 'package:pos/components/charts/lineChart.dart';
import 'package:pos/controller/home/homeController.dart';
import 'package:pos/utility/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (cont) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 36),

                          child: Text(
                            "Welcome Back!",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: headingColor),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              cont.showCheckoutBar();
                            },
                            child: const Icon(
                              Icons.menu,
                              size: 32,
                              color: primaryColor,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TopStatBar(
                    data: cont.chartData,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomLineChartWidget(
                    data: cont.chartData,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: secondaryColor),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recent Orders",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: primaryColor),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 300,
                          width: double.infinity,
                          // padding: EdgeInsets.all(18),

                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: secondaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        image: DecorationImage(image: AssetImage('assets/img-${Random.secure().nextInt(3)+1}.png')),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Item Name'),
                                        Text("Item descrption")
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                          "x${Random.secure().nextInt(10)}")),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text('Inprogress'),
                                          Text(
                                              "\$${(Random.secure().nextDouble() * 234).toStringAsFixed(2)}")
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
