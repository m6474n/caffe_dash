import 'package:get/get.dart';

class CheckoutController extends GetxController{



List<Map<String,dynamic>> billItems = [
  {
    'item_name': "Caramel Frappuccino",
    'note':"Description",
    'price': 3.95,
    'quantity': 1
  },
  {
    'item_name': "Peppermint Macchiato",
    'note':"Description",
    'price': 9.02,
    'quantity': 2
  },
  {
    'item_name': "Coffee Latte Frappuccino ",      
    'note':"Description",
    'price': 4.79,
    'quantity': 1
  },
  {
    'item_name': "Chocolate Frappuccino ",     
    'note':"Description",
    'price': 4.51,
    'quantity': 1
  },
];

List<Map<String,dynamic>> paymentMethods = [
  {
    'title': "Cash", 
    'image': 'assets/cash.png',
    'isActive': true
  },
  {
    'title': "Card", 
    'image': 'assets/card.png',
    'isActive': false
  },
  {
    'title': "E-Wallet", 
    'image': 'assets/scan.png',
    'isActive': false
  },


];

resetPaymentMethod(){
for(var e in paymentMethods){
  e['isActive'] = false;
  update();
}
}
changePaymentMethod(index){

paymentMethods[index]['isActive'] = true;
update(); 
}

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}