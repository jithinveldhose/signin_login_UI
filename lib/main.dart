import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/Reset_Screen/ResetScreen.dart';
import 'package:flutter_application_1/screens/login_screen/login.dart';
import 'package:flutter_application_1/screens/signup_Screen/signup_Scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',home:SignUpPage(),
    );
  }
}
