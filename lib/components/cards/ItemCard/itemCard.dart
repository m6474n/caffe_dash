import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/cards/ItemCard/addons/itemAddon.dart';
import 'package:pos/components/customButtom.dart';

import 'package:pos/controller/itemCardController.dart';
import 'package:pos/models/itemModel.dart';
import 'package:pos/utility/constants.dart';

class ItemCard extends StatefulWidget {
  final Item item;
   ItemCard({super.key, required this.item});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
bool isExpanded  = false;


 expandContainer(){
  setState(() {
    isExpanded = !isExpanded
;  });
 }

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: ItemCardController(item: widget.item),
        builder: (cont) {
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
                          color: secondaryColor,
                          image: DecorationImage(image: AssetImage(widget.item.image??""), fit: BoxFit.cover)
                          ),
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
                            widget.item.itemName ?? "",
                            style: TextStyle(fontSize: 18, color: textColor),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: Text(
                                widget.item.description ?? "",
                                overflow: TextOverflow.clip,
                                style:
                                    TextStyle(fontSize: 12, color: description),
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$ ${widget.item.price ?? "0"}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: headingColor),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    expandContainer();
                                  },
                                  child: isExpanded
                                      ? AnimatedContainer(
                                          duration: Duration(milliseconds: 800),
                                          child: Icon(
                                            Icons.keyboard_arrow_up_sharp,
                                            color: primaryColor,
                                          ))
                                      : AnimatedContainer(
                                          duration: Duration(milliseconds: 800),
                                          child: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: primaryColor,
                                          )))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ClipRect(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    height: isExpanded ? 190 : 0,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: List.generate(widget.item.attributes!.length, (index) {
                        return Container(
                          width: width * 0.087,
                          child: ItemAddon(
                            itemName: widget.item.itemName ?? "",
                            atrChilds: widget.item.attributes![index].atrChilds ?? [],
                            atrName: widget.item.attributes![index].atrName ?? "",
                            atrType: widget.item.attributes![index].atrType ?? "text",
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                if (isExpanded)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Container(
                        height: 55,
                        child: CustomButton(title: "Add to Bill", onTap: () {}),
                      ),
                    ),
                  )
              ],
            ),
          );
        });
  }
}
