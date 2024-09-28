import 'package:flutter/material.dart';
import 'package:pos/components/cards/ItemCard/addons/itemAddon2.dart';
import 'package:pos/components/cards/ItemCard/addons/itemAddon3.dart';
import 'package:pos/utility/constants.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: secondaryColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 145,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: secondaryColor),
                // color: secondaryColor,
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Caramel Frappuccino",
                      style: TextStyle(fontSize: 18, color: textColor),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Text(
                          "Caramel syrup with coffee, milk, and whipped cream",
                          overflow: TextOverflow.clip,
                          style: TextStyle(fontSize: 12, color: description),
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "\$ 3.952 ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: headingColor),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 18, left: 2, right: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ItemAddon2()
                    ),
                    Expanded(
                      child: ItemAddon3()
                    )
                  ],
                ),  
                
SizedBox(height: 18,),                
                 Row(
                  children: [
                    Expanded(
                      child: ItemAddon3()
                    ),
                    SizedBox(
                                width: 12,
                              ),
                    Expanded(
                      child: ItemAddon3()
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
