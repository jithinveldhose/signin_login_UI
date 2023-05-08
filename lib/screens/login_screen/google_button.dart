import 'package:flutter/material.dart';
var googleButton=TextButton(
                style: TextButton.styleFrom(
                  backgroundColor:Color.fromARGB(234, 243, 240, 240),
                  foregroundColor: Color.fromARGB(255, 68, 67, 67)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height:35.0,
                      width: 35.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/google.png'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width:40,
                    ),
                    const Text("Login In with Google",style: TextStyle(fontSize:17),)
                  ],
                ),
                onPressed: () {});