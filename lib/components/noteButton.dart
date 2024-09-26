import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class NoteButton extends StatelessWidget {
  final VoidCallback onTap;
  final double titleSize;
  const NoteButton({super.key, required this.onTap, this.titleSize = 16, });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text("Note", style: TextStyle(color:primaryColor, fontSize: titleSize, ),),
            Image(image: AssetImage('assets/edit.png',), height: 10,)
          ],
        ),
      )),
    );
  }
}