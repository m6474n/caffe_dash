import 'package:get/get.dart';

class CheckoutController extends GetxController{


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