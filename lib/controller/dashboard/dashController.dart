import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashController extends GetxController{
 final PageController pageController = PageController();
  int selectedIndex = 0;

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
    'title': 'Wallet',
    'icon': "assets/Wallet.png",
    'isActive': false
  },
  {
    'title': 'Setting',
    'icon': "assets/setting.png",
    'isActive': false
  },
  {
    'title': 'Logout',
    'icon': "assets/Logout.png",
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