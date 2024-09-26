import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class CatCard extends StatelessWidget {
  final VoidCallback onTap;
  final String title, image;
  final bool isActive;
  const CatCard(
      {super.key,
      required this.isActive,
      required this.title,
      required this.onTap,
      required,
      required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 109,
          width: double.infinity,
          decoration: BoxDecoration(
              color: isActive ? secondaryColor : whiteColor,
              border: Border.all(
                width: 1,
                color: isActive ? borderPrimary : borderSecondary,
              ),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.contain)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(title)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
