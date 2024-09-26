import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/cards/catCard.dart';
import 'package:pos/components/searchBox.dart';
import 'package:pos/controller/home/homeController.dart';
import 'package:pos/utility/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder(
        init: HomeController(),
        builder: (cont) {
          return Scaffold(
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Choose Category",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: headingColor),
                      ),
                      Container(width: width * 0.26, child: SearchBox())
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 100,
                    width: width, //
                    child: Row(
                      children: List.generate(cont.catList.length, (index) {
                        return Expanded(
                            child: CatCard(
                          onTap: () {
                            cont.changeCategory(index);
                          },
                          title: cont.catList[index]['title'],
                          image: cont.catList[index]['image'],
                          isActive: cont.catList[index]['isActive'],
                        ));
                      }),
                    ))
              ],
            ),
          );
        });
  }
}
