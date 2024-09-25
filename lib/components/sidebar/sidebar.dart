import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pos/components/sidebar/sidebarItem.dart';
import 'package:pos/controller/dashboard/dashController.dart';
import 'package:pos/utility/constants.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: DashController(),
        builder: (cont) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
              height: height,
              width: width * 0.08,
              color: whiteColor,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Center(
                      child: Image.asset("assets/K.png"),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),

                          itemCount: cont.sidebarItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                  onTap: () {
                                    cont.onItemTapped(index);
                                  },
                                  child: SidebarItem(
                                    title: cont.sidebarItems[index]['title'],
                                    icon: cont.sidebarItems[index]['icon'],
                                    isActive: cont.sidebarItems[index]
                                        ['isActive'],
                                  )),
                            );
                          }))
                ],
              ));
        });
  }
}
