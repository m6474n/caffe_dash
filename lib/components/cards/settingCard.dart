import 'package:flutter/material.dart';
import 'package:pos/components/inputField/customField.dart';
import 'package:pos/utility/constants.dart';

class SettingCard extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget subtitle;
  const SettingCard({super.key, required this.title,  this.leading, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(18),
      width: width*0.2055,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          leading??Container(),
         
          leading !=null? SizedBox(width: 12,):Container(),
          Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children: [Text(title, style: TextStyle(fontSize:18 , fontWeight: FontWeight.w500),),
        subtitle
          
          
          ],)
        ],
      ),
    );
  }
}
