import 'package:flutter/material.dart';
import 'package:pos/components/cards/ItemCard/itemAddon2.dart';
import 'package:pos/components/cards/ItemCard/itemAddon3.dart';
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sugar",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text("H",
                                        style: TextStyle(fontSize: 16))),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text("C",
                                        style: TextStyle(fontSize: 16))),
                              ), SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text("C",
                                        style: TextStyle(fontSize: 16))),)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                                width: 12,
                              ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ice",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text("S",
                                        style: TextStyle(fontSize: 16))),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text("M",
                                        style: TextStyle(fontSize: 16))),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                    child: Text("L",
                                        style: TextStyle(fontSize: 16))),
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
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
