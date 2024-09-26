import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class PaymentCard extends StatelessWidget {
final String title, image;
final bool isActive;
final VoidCallback onTap;
  const PaymentCard({super.key, required this.title, required this.image, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          border: Border.all(color: isActive ? borderPrimary: Colors.transparent),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              image,
                              height: 34,
                              color: isActive? primaryColor:description,
                            ),
                            SizedBox(height: 4,), Text(title, style: TextStyle(color: description),)
                          ],
                        ),
                      ),
                    ),
      ),
    );
  }
}