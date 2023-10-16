// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:renta/screens/Sign%20in/VendorSignIn.dart';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'dart:io';



class VendorSignUpApp extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        //  backgroundColor: Colors.teal,
        // title: Text('Sign Up Form'),
      // ),
      body: ListView(
        children: [
          Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   height: MediaQuery.sizeOf(context).height*0.3,
              //   width: MediaQuery.sizeOf(context).width*1,
              //   // width: ,
              //   decoration: BoxDecoration(
              //     color: Colors.teal,
              //     borderRadius: BorderRadius.only(bottomRight:Radius.circular(20), bottomLeft: Radius.circular(20))
                  
              //   ),
              //   child: 
              //Center(child: Text("Welcome to Renta",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
              // ),
              SizedBox(height: 70.0),
              Center(child: Text("Welcome to Renta",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),)),
              
              Center(child: Text("Sign up to Renta as a vendor", style: TextStyle(fontSize: 18),)),
              SizedBox(height: 20,),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  // fillColor: Colors.teal,
                  prefixIcon: Icon(Icons.person_2, color: Colors.black,size: 36,),
                  labelText: 'Name',labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_4_rounded, size: 36,color:Colors.black,),
                  labelText: 'Username',labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: Colors.black,size: 36,),
                  labelText: 'Phone',labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
              ),
      
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.teal
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>VendorLoginPage() ),
                    );
                    
                    // Implement your sign-up logic here
                    // String name = _nameController.text;
                    // String email = _emailController.text;
                    // String password = _passwordController.text;
                    // print('Name: $name, Email: $email, Password: $password');
                  },
                  child: Text('Sign Up', style: TextStyle(fontSize: 16),),
                ),
              ),
               Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Already have an account?", style: TextStyle(fontSize: 20),),
      
                  InkWell(
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VendorLoginPage()),
                      );
                    }, 
                    child: Text("Sign in", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
          ),
          
          ],
          
          ),
        ),]
      ),
    );
  }
}






