import 'package:get/get.dart';

class CheckoutController extends GetxController{

bool expandCheckout = true;
toggleCheckoutBar(){
  expandCheckout = !expandCheckout;
  update();
 if(expandCheckout == true){
   Future.delayed(Duration(milliseconds:500), (){
    showCheckoutContent = true;
    update();
  });
 }
 else{
  showCheckoutContent = false;
 }

}
bool showCheckoutContent = true;



List<Map<String,dynamic>> billItems = [

  {
    'item_name': "Peppermint Macchiato",
     'image': "assets/img-3.png",
    'note':"Description",
    'price': 9.02,
    'quantity': 2
  },
  {
    'item_name': "Coffee Latte Frappuccino ",   
     'image': "assets/img-4.jpg",   
    'note':"Description",
    'price': 4.79,
    'quantity': 1
  },
  {
    'item_name': "Chocolate Frappuccino ",  
     'image': "assets/img-5.jpg",   
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