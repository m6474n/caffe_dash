import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:greyColor,
      body: Column(children: [
        Text("Settings")
      ],),
    );
  }
}