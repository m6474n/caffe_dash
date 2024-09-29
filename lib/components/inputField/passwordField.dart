import 'package:flutter/material.dart';
import 'package:pos/utility/constants.dart';

class PasswordField extends StatefulWidget {
 final  String title;
 final Widget? prefix;

final TextEditingController controller;
  const PasswordField({super.key, required this.title, required this.controller, this.prefix,});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: TextStyle(color: primaryColor, fontSize: 16),),
          SizedBox(height: 6,),
          TextFormField(
            obscureText: obscure,
            validator: (value){
              return value == null || value.isEmpty ? "Enter valid ${widget.title.toLowerCase()}": null; 
            },
            controller: widget.controller,
            decoration: InputDecoration(
              prefixIcon: widget.prefix,
              suffixIcon: GestureDetector(
                onTap: ()
                {
                    setState(() {
                      obscure = !obscure;
                    });

                }, child: Icon(obscure? Icons.visibility_off: Icons.visibility, color:obscure? null: primaryColor,)) ,
              filled: true,
              fillColor: Colors.transparent,
              hintText: "Enter ${widget.title.toLowerCase()}",
              hintStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
            ),
          ),
        ],
      ),
    );
  }
}