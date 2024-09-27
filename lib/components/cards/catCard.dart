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
      padding:  EdgeInsets.symmetric(horizontal: width*0.004),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
         
          width: double.infinity,
          decoration: BoxDecoration(
              color: isActive ? secondaryColor : whiteColor,
              border: Border.all(
                width: 1,
                color: isActive ? borderPrimary : secondaryColor,
              ),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 50,maxWidth: 50),
                  height: width*0.05,
                  width: width*0.05,
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
                Text(title,style: TextStyle(),textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
