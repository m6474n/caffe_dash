import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/customButtom.dart';
import 'package:pos/components/inputField/customInputField.dart';
import 'package:pos/components/inputField/passwordField.dart';
import 'package:pos/controller/authController.dart';
import 'package:pos/utility/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    double width = MediaQuery.of(context).size.width ;
       return GetBuilder(
      init: AuthController(),
      builder: (cont) {
        return Scaffold(
body: Container(
  height: height,
  width: width,
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/bg.jpg'),fit: BoxFit.cover)
  ),
  child: Center(
    child: ClipRect(
      child: BackdropFilter(
                        filter:  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      
        child: Container(
          padding: EdgeInsets.all(36),
          height:600,
          width: width*0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: whiteColor.withOpacity(0.5)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(child: Center(child: Image.asset('assets/K.png', scale: 0.8,),),),
          SizedBox(height: 8,),
          Center(child: Text("Kaffe Cloud", textAlign: TextAlign.center,style: TextStyle(fontSize: 18, color: primaryColor, fontWeight: FontWeight.bold),)),
          Center(child: Text("G.T Road Gujrat, Punjab Pakistan",textAlign: TextAlign.center,style: TextStyle(color: headingColor, fontSize: 14),)),
          SizedBox(height: 40,),
          CustomInputField(title: "Username",controller: TextEditingController()
          
        ),SizedBox(height: 8,),
        PasswordField(title: "Password", controller: TextEditingController()), 
        SizedBox(height: 4,),
        Container(child: Row(children: [
          Checkbox(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            activeColor: primaryColor,
        
            checkColor: whiteColor,
            value: cont.rememberPass, onChanged: (newVal){
              cont.toggleRememberPass(newVal);

          }), Text("Remember me?")
        ],),),
        SizedBox(height: 40,),
            Container(
              height: 60,
              child: CustomButton(title: "Login", onTap: (){}))
          ],),
        ),
      ),
    ),
  )),

        );
      }
    );
  }
}