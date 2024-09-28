import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class ProfileCard extends StatelessWidget {
  final String userName, role, image;
  final VoidCallback onTap
;  const ProfileCard({
    super.key,
    required this.userName,
    required this.image,
    required this.onTap,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image), // Use the image parameter here
                fit: BoxFit.cover,
              ),
              color: secondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I am $role!",
                  style: TextStyle(color: description, fontSize: 12),
                ),
                Text(
                  "$userName",
                  style: TextStyle(
                    color: headingColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(Icons.close_sharp, color: primaryColor,))
        ],
      ),
    );
  }
}
