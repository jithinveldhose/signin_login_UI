import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/OTP_Screen/OTPscreen.dart';
import 'package:flutter_application_1/screens/widgets/textfield.dart';

class ForgotPage extends StatelessWidget {
  ForgotPage({super.key});
  var thinDivider = const SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:20,right:20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Stack(children: [
            Image.asset( 'assets/images/Forgot_pass.jpg'),
            Positioned(
              top:40,
                child:
                    IconButton(onPressed: () {Navigator.pop(context);}, icon:const Icon(Icons.arrow_back)))
          ]),
              const Text(
                'Forgot',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Password?',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              thinDivider,
              const Text(
                "Don't worry it happens,Please enter the\naddress associated with your account.",
                style: TextStyle(fontSize: 15),
              ),
              thinDivider,
              thinDivider,
              TextFields(
                labeltexts: "Email ID / Mobile number",
                primaryIcon: const Icon(Icons.alternate_email),
              ),
              const SizedBox(
                height: 60,
              ),
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
                            builder: (context) => const OtpScreen()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
