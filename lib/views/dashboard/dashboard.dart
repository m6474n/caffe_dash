import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pos/components/checkout/checkoutSection.dart';
import 'package:pos/components/sidebar/sidebar.dart';
import 'package:pos/controller/dashboard/dashController.dart';
import 'package:pos/utility/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init:DashController(),
      builder: (cont) {
        return Scaffold(
          backgroundColor: greyColor,
          
          body: Row(
            children: <Widget>[
              Sidebar(),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
             
                  // scrollBehavior: ScrollBehavior.none,
                  // scrollDirection: A,
                  controller: cont.pageController,
                  onPageChanged: (index) {
                  
                      cont.selectedIndex = index;
              
                  },
                  children: cont.screenList
                ),
              ),
              CheckoutSection()
            ],
          ),
        );
      }
    );
  }
}


