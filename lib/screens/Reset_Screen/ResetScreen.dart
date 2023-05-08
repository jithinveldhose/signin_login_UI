import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widgets/button.dart';
import 'package:flutter_application_1/screens/widgets/textfield.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:20, right: 20, top:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [Container(
                  width: screenWidth * 0.89,
                  height:260,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Reset_Pass.jpg'),
                          fit: BoxFit.fill)),
                ),Positioned(top:40,child: IconButton(onPressed: 
                (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back)))
             ] ),
               const Text(
                'Reset',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),SizedBox(height: 10,),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),SizedBox(height:30,),
              TextFields(labeltexts: 'New password', primaryIcon:const Icon(Icons.lock_clock_rounded)),
              SizedBox(height:20,),
               TextFields(labeltexts: 'Confirm password', primaryIcon:const Icon(Icons.lock_clock_rounded)),
               SizedBox(height:70,),
               CustomButton(
                buttonText: 'Submit',
                buttonAction: () {},
                buttonColor: Colors.blue,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}


