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
      builder: (cont){
      return Scaffold(body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
        
                 const SizedBox(height: 28,),
                 Container(child: Row(
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
                              onTap:(){
                                cont.showCheckoutBar();
                              }, child: const Icon(Icons.menu, size: 32,color: primaryColor,))
                          ],),),
                   
                    const SizedBox(
                      height: 30,
                    ),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ Expanded(
    child: ProgreeCard(
                        order_count: 18,
                        title: "Running Orders",
                      ),
  ),SizedBox(width: 12,),
                     Expanded(
                       child: ProgreeCard(
                        order_count:40,
                        title: "Completed Orders",
                      
                                           ),
                     )
                    ],),
                    SizedBox(height: 12,),
                   Container(height:400,
                   child: CustomLineChart(),)
                   
                    
          ],),
      ),);
    });
  }
}