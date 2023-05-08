import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/OTP_Screen/pinput.dart';
import 'package:flutter_application_1/screens/Reset_Screen/ResetScreen.dart';
import 'package:flutter_application_1/screens/widgets/button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:20, right:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Stack(children: [
            Image.asset('assets/images/Forgot_pass.jpg'),
            Positioned(
              top:40,
                child:
                    IconButton(onPressed: () {Navigator.pop(context);}, icon:const Icon(Icons.arrow_back)))
          ]),
              const Text(
                'Enter OTP',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'An 4 digit code has been  send to ',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                '+9895720497',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const PinPut(),
              const SizedBox(
                height:30,
              ),
              // CustomButton(
              //   buttonText: 'Submit',
              //   buttonAction: () {
              //     Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) =>
              //                 const ResetScreen()));
              //   },
              //   buttonColor: Colors.blue,
              // ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetScreen()));
                  },
                ),
              ),
              Row(
                
                children: [
                  Container(padding: EdgeInsets.only(left:70),
                    child: const Text(
                      "Don't recieve the OTP?",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Resend'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
