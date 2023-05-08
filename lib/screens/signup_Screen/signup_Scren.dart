import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen/login.dart';
import 'package:flutter_application_1/screens/widgets/button.dart';
import 'package:flutter_application_1/screens/widgets/textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var spaceBetween = const SizedBox(
      height: 20,
    );
    var thinDivider = const SizedBox(
      height: 15,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/SignUp.jpg'),
              const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFields(
                  labeltexts: 'Email',
                  primaryIcon: const Icon(Icons.alternate_email)),
              const SizedBox(
                height: 10,
              ),
              TextFields(
                  labeltexts: 'Full name',
                  primaryIcon: const Icon(Icons.person_outline)),
              TextFields(
                  labeltexts: 'Mobile', primaryIcon: const Icon(Icons.phone)),
              const SizedBox(
                height:30,
              ),
              Container(
                height:30,
                width: 350,
                
                child: Row(
                  children: [
                    Text("By signing up, you're agree to our"),
                    TextButton(
                        onPressed: () {}, child: Text('terms & conditions'))
                  ],
                ),
              ),Container(
                height:32,
                width: 350,
                
                child: Row(
                  children: [
                    Text("and"),
                    TextButton(
                        onPressed: () {}, child: Text('Privacy Policy'))
                  ],
                ),
              ),
              const SizedBox(
                height:30,
              ),
              CustomButton(
                buttonText: 'Sign Up',
                buttonAction: () {},
                buttonColor: Colors.blue,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Joined as before?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child:
                          const Text('Login', style: TextStyle(fontSize: 17)))
                ],
              ),
            ],
          ),
        )));
  }
}
