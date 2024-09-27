import 'package:flutter/material.dart';
import 'package:pos/components/noteButton.dart';
import 'package:pos/utility/constants.dart';

class BillItemCard extends StatelessWidget {
  final String title;
  final String? image;
  final double price ;
  final int quantity ;
  const BillItemCard({super.key, required this.title, this.image, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
                        padding: EdgeInsets.all(4),

      decoration: BoxDecoration(border: Border.all(width: 1, color: secondaryColor), borderRadius: BorderRadius.circular(12), ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 65,
              width: 75,
              decoration: BoxDecoration(
                
                  color: secondaryColor, borderRadius: BorderRadius.circular(12)),
            ),
          ),SizedBox(width: 18,) ,Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 200),
                  child: Text(title, style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis,)),
                Row(children: [Text('x${quantity}', style: TextStyle(fontSize: 16),),SizedBox(width: 18,) ,NoteButton(onTap: (){}, titleSize: 12,) ],)
              ],),
          ),  Expanded(     
            flex: 1, 
            child: Container(
              child: Text("\$ ${price}",style:  TextStyle(fontSize: 16)),
            ),)
        ],
      ),
    );
  }
}
