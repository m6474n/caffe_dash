import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class ItemAddon3 extends StatelessWidget {
  const ItemAddon3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
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
                      );
  }
}