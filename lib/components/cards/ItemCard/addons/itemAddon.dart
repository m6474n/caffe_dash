import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controller/home/homeController.dart';
import 'package:pos/models/itemModel.dart';
import 'package:pos/utility/constants.dart';

class ItemAddon extends StatelessWidget {
  final String atrName, itemName;
  final String atrType;
  final List<AtrChilds> atrChilds;
  const ItemAddon({super.key, required this.atrChilds, required this.atrName,required this.itemName,required this.atrType});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (cont) {
          return Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  atrName,
                  style: TextStyle(fontSize: 16, color: headingColor),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                    children: List.generate(atrChilds.length, (index) {
                  return AtrChildButton(
                      title: atrChilds[index].childName ?? "",
                      type: atrType,
                      onTap: () {
                        print("atrName : $atrName");
                        print("atrValue: ${atrChilds[index].value}");
                        print(
                            "${atrName.toLowerCase()} :${atrChilds[index].value}");
                        cont.updateItemAtr(itemName, atrName,  atrChilds[index].childName??"" );
                      },
                      isSelected: atrChilds[index].isSelected ?? false);
                }))
              ],
            ),
          );
        });
  }
}

class AtrChildButton extends StatelessWidget {
  final String title, type;
  final VoidCallback onTap;
  final bool isSelected;
  const AtrChildButton(
      {super.key,
      required this.title,
      required this.type,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              color: secondaryColor,
              border: Border.all(
                  width: 1, color: isSelected ? primaryColor : secondaryColor),
              borderRadius: BorderRadius.circular(100)),
          child: Center(child: Text(title, style: TextStyle(fontSize: type != "text"? 12 :16, color: isSelected? primaryColor:headingColor))),
        ),
      ),
    );
  }
}
