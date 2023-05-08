import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/forgot_Screen/forgot_Screen.dart';
import 'package:flutter_application_1/screens/login_screen/google_button.dart';
import 'package:flutter_application_1/screens/widgets/textfield.dart';
import '../widgets/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var spaceBetween = const SizedBox(
      height: 20,
    );
    var thinDivider = const SizedBox(
      height: 15,
    );
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset('assets/images/Login.jpg'),
            Positioned(
                child:
                    IconButton(onPressed: () {Navigator.pop(context);}, icon:const Icon(Icons.arrow_back)))
          ]),
          thinDivider,
          const Text(
            'Login',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          spaceBetween,
          TextFields(
              labeltexts: 'Email id', primaryIcon: Icon(Icons.alternate_email)),
          spaceBetween,
          TextFields(
            labeltexts: 'password',
            primaryIcon: const Icon(
              Icons.lock_clock_rounded,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPage()));
                    }
                  },
                  child: const Text('Forgot password?',
                      style: TextStyle(fontSize: 15)))),
          CustomButton(
            buttonText: 'login',
            buttonAction: () {},
            buttonColor: Colors.blue,
          ),
          thinDivider,
          Row(children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  child: const Divider(
                    color: Color.fromARGB(255, 191, 191, 191),
                    height: 10,
                  )),
            ),
            const Text("OR"),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: const Divider(
                    color: Color.fromARGB(255, 191, 191, 191),
                    height: 10,
                  )),
            ),
          ]),
          thinDivider,
          googleButton,
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'New to Logistics?',
                style: TextStyle(fontSize: 15),
              ),
              TextButton(onPressed: () {}, child: const Text('Register'))
            ],
          )
        ],
      ),
    )));
  }
}











 // SizedBox(
            //   width:350,
            //   height:50,
            //   child: TextButton(
            //     onPressed: () {
            //       print('Pressed');
            //     },
            //     style: TextButton.styleFrom(
            //       backgroundColor: Color.fromARGB(255, 59, 110, 248),
            //       foregroundColor: Colors.white,
            //       shape: const BeveledRectangleBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(3),
            //         ),
            //       ),
            //     ),
            //     child: const Text('Login',style:TextStyle(fontSize:20) ,),
            //   ),
            // )
            // TextFormField(
            //   decoration: const InputDecoration(
            //       border: UnderlineInputBorder(),
            //       icon: Icon(Icons.lock_clock_rounded),
            //       labelText: 'password',
            //       suffixIcon: Icon(Icons.remove_red_eye_rounded)),
            // ),