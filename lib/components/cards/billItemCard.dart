import 'package:flutter/material.dart';
import 'package:pos/components/noteButton.dart';
import 'package:pos/utility/constants.dart';

class BillItemCard extends StatelessWidget {
  const BillItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 65,
            width: 75,
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(12)),
          ), Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Item Name"),
              Row(children: [Text('x2'), NoteButton(onTap: (){}) ,Spacer(), Text('\$1.426') ],)
            ],), 
        ],
      ),
    );
  }
}
