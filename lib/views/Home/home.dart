import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/cards/catCard.dart';
import 'package:pos/components/cards/ItemCard/itemCard.dart';
import 'package:pos/components/searchBox.dart';
import 'package:pos/controller/home/homeController.dart';
import 'package:pos/models/itemModel.dart';
import 'package:pos/utility/constants.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GetBuilder(
        init: MenuControler(),
        builder: (cont) {
          return Scaffold(
            body: Padding(
             padding: EdgeInsets.symmetric(horizontal: width*0.017),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 36),
                    
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
                        Container(child: Row(children: [
                           Container(width: width * 0.26, child: SearchBox()),SizedBox(width: 16,) ,GestureDetector(
                            onTap:(){
                              cont.showCheckoutBar();
                            }, child: Icon(Icons.menu, size: 32,color: primaryColor,))
                        ],),)
                       
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      // padding: EdgeInsets.symmetric(horizontal: width*0.017),
                      height: height*0.1,
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
                      )),
                      SizedBox(height: 24,),
                Text(
                          "${cont.selectedCategory} ",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: headingColor),
                        ),                       SizedBox(height: 24,)
              ,
                     Container(
                      height: height*0.701,
                      width: width,
                       child: SingleChildScrollView(
                         child: Wrap(
                          
                          spacing:12 ,
                          direction: Axis.horizontal,
                          runSpacing: 12,
                         children: List.generate(cont.itemsList.length, (index){
                          cont.item = Item.fromJson(cont.itemsList[index]);
                            return Container(
                              
                              width: width*0.205,
                              child: ItemCard(item: cont.item!,));
                           }),
                         ),
                       ),
                     )
                ],
              ),
            ),
          );
        });
  }
}
