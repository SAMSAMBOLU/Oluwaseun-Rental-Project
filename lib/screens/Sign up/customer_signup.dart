// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';


class CustomerSignUpPage extends StatelessWidget {
  static String routeName = "/CustomerSignUpPage";
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.teal,
          title: Text('Customer Sign Up'),
        ),
        body:CustomerSignIn ()
    
        ),
    );
  }
}