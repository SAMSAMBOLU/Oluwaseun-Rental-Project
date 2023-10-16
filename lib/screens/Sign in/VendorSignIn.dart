// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:renta/screens/password/forgotpassword.dart';



class VendorLoginPage extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        // title: Text('Sign In'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  String _username = '';
  String _password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with sign-in logic here
      print('Username: $_username');
      print('Password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Text("Welcome to Renta",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
            Text("Sign in to Renta as Vendor", style: TextStyle(fontSize: 18),),
            SizedBox(height: 30,),
          
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(),

            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
            onSaved: (value) {
              _username = value!;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(),

            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) {
              _password = value!;
            },
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.teal
                ),
              onPressed: _submitForm,
              child: Text('Sign In'),
            ),
          ),
          SizedBox(height: 10,width: 20,),
             InkWell(
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()),
                    );
                  }, 
                  child: Text("Forgot Password?", style: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                ),
        ],
      ),
    );
  }
}
