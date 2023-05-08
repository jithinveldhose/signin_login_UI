import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  void Function() buttonAction;
  Color? buttonColor;
  
   
  CustomButton(
      {super.key,
      required this.buttonText,
      required this.buttonAction,
        this.buttonColor,
     });
  @override
  Widget build(BuildContext context) { 
    return SizedBox(
      width:350,
      height:50,
      child: ElevatedButton(
                    onPressed: () {buttonAction;},
                    style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    child:  Text(
                     buttonText,
                      style: TextStyle(color: Colors.white, fontSize:20),
                    ),
                  ),
    );
  }
}
