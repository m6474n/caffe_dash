import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class ItemAddon2 extends StatelessWidget {
  const ItemAddon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mood",
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
                              )
                            ],
                          )
                        ],
                      );
  }
}