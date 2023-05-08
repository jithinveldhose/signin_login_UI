import'package:flutter/material.dart';

class TextFields extends StatelessWidget {
   TextFields({super.key,required this.labeltexts,required this.primaryIcon, });
  String labeltexts;
  Icon primaryIcon;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration:  InputDecoration(
    
                  border: UnderlineInputBorder(),
                  icon: primaryIcon,
                  labelText: labeltexts,
                  ),
            );
  }
}