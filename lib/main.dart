import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pos/views/dashboard/dashboard.dart';

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
      title: 'Point of Sale',
      theme: ThemeData(
        fontFamily: 'Poppins',
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Dashboard()
    );
  }
}
