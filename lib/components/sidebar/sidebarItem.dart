import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class SidebarItem extends StatelessWidget {
  final String title, icon;
  final bool isActive;
  const SidebarItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: isActive ? primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(36)),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 40,
              color: isActive ? whiteColor : primaryColor,
            ),
            Text(
              title,
              style: TextStyle(color: isActive ? whiteColor : primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
