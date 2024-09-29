import 'package:get/get.dart';
import 'package:pos/controller/checkout/checkoutController.dart';
import 'package:pos/models/itemModel.dart';

class MenuControler extends GetxController {
  Item? item;
  var checkoutCont = Get.find<CheckoutController>();

  showCheckoutBar(){
    checkoutCont.toggleCheckoutBar();
    
  }

  String selectedCategory = "All";

  List<Map<String, dynamic>> itemsList = [
    {
      'item_name': "Caramel Frappuccino",
      'image': "assets/img-2.png",
      'description': 'Caramel syrup with coffee, milk, and whipped cream',
      'price': 3.95,
      'attributes': [
        {
          'atr_name': 'Mood',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "H",
              'value': 'hot',
              'isSelected': true,
            },
            {
              'child_name': "C",
              'value': 'cold',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Size',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "S",
              'value': 'small',
              'isSelected': true,
            },
            {
              'child_name': "M",
              'value': 'medium',
              'isSelected': false,
            },
            {
              'child_name': "L",
              'value': 'large',
              'isSelected': false,
            },
          ]
        },
      
        {
          'atr_name': 'Sugar',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Ice',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
      ]
    },
      {
      'item_name': "Peppermint Macchiato",
       'image': "assets/img-3.png",
      'description': 'Fresh peppermint mixed with choco, and blended cream',
      'price': 5.34,
      'attributes': [
        {
          'atr_name': 'Mood',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "H",
              'value': 'hot',
              'isSelected': true,
            },
            {
              'child_name': "C",
              'value': 'cold',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Size',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "S",
              'value': 'small',
              'isSelected': true,
            },
            {
              'child_name': "M",
              'value': 'medium',
              'isSelected': false,
            },
            {
              'child_name': "L",
              'value': 'large',
              'isSelected': false,
            },
          ]
        },
      
        {
          'atr_name': 'Sugar',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Ice',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
      ]
    },
      {
      'item_name': "Chocolate Frappuccino",
       'image': "assets/img-4.jpg",
      'description': 'Sweet chocolate with coffee, milk, and whipped cream',
      'price': 5.41,
      'attributes': [
        {
          'atr_name': 'Mood',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "H",
              'value': 'hot',
              'isSelected': true,
            },
            {
              'child_name': "C",
              'value': 'cold',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Size',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "S",
              'value': 'small',
              'isSelected': true,
            },
            {
              'child_name': "M",
              'value': 'medium',
              'isSelected': false,
            },
            {
              'child_name': "L",
              'value': 'large',
              'isSelected': false,
            },
          ]
        },
      
        {
          'atr_name': 'Sugar',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Ice',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
      ]
    },
      {
      'item_name': "Coffee Latte Frappuccino",
       'image': "assets/img-5.jpg",
      'description': 'Special coffee, choco cream, and whipped cream',
      'price': 4.79,
      'attributes': [
        {
          'atr_name': 'Mood',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "H",
              'value': 'hot',
              'isSelected': true,
            },
            {
              'child_name': "C",
              'value': 'cold',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Size',
          'atr_type': 'text',
          'atr_childs': [
            {
              'child_name': "S",
              'value': 'small',
              'isSelected': true,
            },
            {
              'child_name': "M",
              'value': 'medium',
              'isSelected': false,
            },
            {
              'child_name': "L",
              'value': 'large',
              'isSelected': false,
            },
          ]
        },
      
        {
          'atr_name': 'Sugar',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
        {
          'atr_name': 'Ice',
          'atr_type': 'percentage',
          'atr_childs': [
            {
              'child_name': "30%",
              'value': '30%',
              'isSelected': true,
            },
            {
              'child_name': "50%",
              'value': '50%',
              'isSelected': false,
            },
            {
              'child_name': "70%",
              'value': '70%',
              'isSelected': false,
            },
          ]
        },
      ]
    },
     
  ];


  void updateItemAtr(String itemName, String key, String childName) {
  itemsList.forEach((e) {
    if (e['item_name'] == itemName) {
      e['attributes'].forEach((i) {
        if (i['atr_name'] == key) {
          i['atr_childs'].forEach((child) {
            if (child['child_name'] == childName) {
              child['isSelected'] = true;
              update();
            } else {
              child['isSelected'] = false;
              update();
            }
          });
        }
      });
    }
  });

}


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
      'title': "Shakes",
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
    selectedCategory = catList[index]['title'];
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
