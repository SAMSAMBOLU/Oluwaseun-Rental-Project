// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:renta/screens/Sign%20up/vendorsignup.dart';
// import 'package:renta/screens/vendorsignup.dart';

class VendorSignUpPage extends StatelessWidget {
  static String routeName = "/VendorSignUpPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Vendor Sign Up'),
      ),
      body: VendorSignUpApp(),
    );
  }
}
