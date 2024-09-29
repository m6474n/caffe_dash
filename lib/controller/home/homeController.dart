import 'package:get/get.dart';
import 'package:pos/controller/checkout/checkoutController.dart';

class HomeController extends GetxController{




   var checkoutCont = Get.find<CheckoutController>();

  showCheckoutBar(){
    checkoutCont.toggleCheckoutBar();
  }
}