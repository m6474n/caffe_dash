import 'package:flutter/material.dart';

class Testingscreen extends StatelessWidget {
  const Testingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        
        itemBuilder: (context,index){
        return Text("Helloo ${index}");
      }),
    );
  }
}