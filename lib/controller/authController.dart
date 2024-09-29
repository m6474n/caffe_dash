import 'package:get/get.dart';

class AuthController extends GetxController{

bool rememberPass = false ;


toggleRememberPass(newVal){
  rememberPass = newVal;
  update();
}

}