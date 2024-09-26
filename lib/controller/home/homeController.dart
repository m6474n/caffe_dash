import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> catList = [
    {
      'title': "All",
      'image': "assets/all.png",
      'isActive': true,
    },
    {
      'title': "Coffee",
      'image': "assets/coffee.png",
      'isActive': false,
    },
    {
      'title': "Juices",
      'image': "assets/juices.png",
      'isActive': false,
    },
    {
      'title': "Milk Shakes",
      'image': "assets/milk.png",
      'isActive': false,
    },
    {
      'title': "Snaks",
      'image': "assets/snacks.png",
      'isActive': false,
    },
    {
      'title': "Rice",
      'image': "assets/rice.png",
      'isActive': false,
    },
    {
      'title': "Desserts",
      'image': "assets/dessert.png",
      'isActive': false,
    },
  ];

  resetCategories() {
    for (var e in catList) {
    e['isActive'] = false;
    update();
  }
  }

  changeCategory(index) {
   resetCategories();
    catList[index]['isActive'] = true;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
