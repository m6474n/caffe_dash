import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pos/utility/constants.dart';
import 'package:pos/views/Auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaffee Cloud',
      theme: ThemeData(
        scaffoldBackgroundColor:greyColor,
        fontFamily: 'Poppins',
     
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: Login()
    );
  }
}
