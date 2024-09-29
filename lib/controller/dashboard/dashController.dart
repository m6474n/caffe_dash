import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/views/Home/home.dart';
import 'package:pos/views/settingScreen.dart';

class DashController extends GetxController{
 final PageController pageController = PageController();
  int selectedIndex = 0;


List<Widget> screenList= <Widget>[
  Center(child: Text('Menu Page')),
                    Menu(),
                    
                    Center(child: Text('History Page')),
                    Center(child: Text('wallet Page')),
                    SettingScreen(),
                   
                  ];

List<Map<String,dynamic>> sidebarItems = [
  {
    'title': 'Home',
    'icon': "assets/home.png",
    'isActive': true
  },
  {
    'title': 'Menu',
    'icon': "assets/menu.png",
    'isActive': false
  },
  {
    'title': 'History',
    'icon': "assets/history.png",
    'isActive': false
  },
  {
    'title': 'Inventory',
    'icon': "assets/inventory.png",
    'isActive': false
  },
  {
    'title': 'Setting',
    'icon': "assets/setting.png",
    'isActive': false
  },
 
];

List<Widget> tabs = [];

 void deactivateAllItems() {
    sidebarItems.forEach((e) {
      e['isActive'] = false;
    });
    update();
  }

void onItemTapped(int index) {
 
      selectedIndex = index;
 deactivateAllItems();
  sidebarItems[index]['isActive'] = true;
    pageController.jumpToPage(index);
    update();
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}