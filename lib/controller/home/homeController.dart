import 'dart:math';

import 'package:get/get.dart';
import 'package:pos/controller/checkout/checkoutController.dart';

class HomeController extends GetxController{


List<Map<String, dynamic>> chartData = 
              [
      {'date': 'Jan', 'sale': Random.secure().nextInt(100)},
      {'date': 'Feb', 'sale': Random.secure().nextInt(100)},
      {'date': 'Mar', 'sale': Random.secure().nextInt(100)},
      {'date': 'Apr', 'sale': Random.secure().nextInt(100)},
      {'date': 'May', 'sale': Random.secure().nextInt(100)},
      {'date': 'Jun', 'sale': Random.secure().nextInt(100)},
      {'date': 'Jul', 'sale': Random.secure().nextInt(100)},
      {'date': 'Aug', 'sale': Random.secure().nextInt(100)},
      {'date': 'Sep', 'sale': Random.secure().nextInt(100)},
      {'date': 'Oct', 'sale': Random.secure().nextInt(100)},
      {'date': 'Nov', 'sale': Random.secure().nextInt(100)},
      {'date': 'Dec', 'sale': Random.secure().nextInt(100)},
    ];

   var checkoutCont = Get.find<CheckoutController>();

  showCheckoutBar(){
    checkoutCont.toggleCheckoutBar();
  }
}