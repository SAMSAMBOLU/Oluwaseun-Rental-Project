// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unused_local_variable, avoid_unnecessary_containers, use_key_in_widget_constructors
// import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
// import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
// import 'package:renta/splashscreen.dart';
// import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
// import 'package:renta/screens/Sign%20up/customer_signup.dart';

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(backgroundColor: Colors.teal,
          title: Text('Sign Up Form'),),
      body: SignUpScreen()));
  }
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   void _signUp() {
//     if (_formKey.currentState!.validate()) {
//       String name = _nameController.text;
//       String username = _usernameController.text;
//       String password = _passwordController.text;

//       // Perform sign-up logic here, e.g., send data to a server

//       print('Name: $name');
//       print('Username: $username');
//       print('Password: $password');
//     }
//   }

// ...

// THE API FOR THE PROJECT//

Future<String> getCsrfToken() async {
    print('Fetching CSRF token...');
    final response =
        await http.get(Uri.parse('https://samsam.pythonanywhere.com/get-csrf-token/'));
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final csrfToken = json['csrfToken'] as String?;
      if (csrfToken != null) {
        return csrfToken;
      } else {
        throw Exception('CSRF token is null');
      }
    } else {
      throw Exception('Failed to fetch CSRF token');
    }
  }

  void _signUp() async {
    if (_formKey.currentState!.validate()) {

      final csrfToken = await getCsrfToken(); // Fetch the CSRF token
      String fullName = _nameController.text;
      List<String> nameParts = fullName.split(' ');


      String firstName = nameParts.isNotEmpty ? nameParts.first : '';
      String lastName = nameParts.length > 1 ? nameParts.last : '';

      String username = _usernameController.text;
      String email=_emailController.text;
      String phoneNumber = _phoneNumberController.text;
      String password = _passwordController.text;

      final url = Uri.parse('https://samsam.pythonanywhere.com/register/');
      final response = await http.post(
        url,
        headers: {
            'Content-Type': 'application/json',
            'X-CSRFToken': csrfToken,
          },
        body: jsonEncode({
            'first_name': firstName,
            'last_name': lastName,
            'username': username,
            'email': email,
            'phone_number': phoneNumber,
            'password': password,
          })
      );

       print('Response status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        print('Response body: ${response.body}');
        final jsonResponse = jsonDecode(response.body);
        print('Decoded JSON: $jsonResponse');

      if (response.statusCode == 201) {
          final jsonResponse = jsonDecode(response.body);
          final email = jsonResponse['email'] as String?;
          final detail = jsonResponse['detail'] as String?;
        // Registration successful
        // Handle navigation or other actions here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CustomerSignIn()),
        );
      } else {
        // Registration failed, show an error message to the user
        final snackBar = SnackBar(
          content: Text('Registration failed. Please try again.'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
        // appBar: AppBar(backgroundColor: Colors.teal,
        //   title: Text('Sign Up Form'),),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                      child: Text(
                    "Welcome to Renta",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
                  Center(
                    child: Text("Enter your details to register into Renta",
                        style: TextStyle(fontSize: 15)),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 20),
                      prefixIcon:
                          Icon(Icons.person, color: Colors.black, size: 36.0),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.supervised_user_circle_sharp,
                            color: Colors.black, size: 36.0),
                        labelText: 'Username',
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.supervised_user_circle_sharp,
                            color: Colors.black, size: 36.0),
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _phoneNumberController,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock, color: Colors.black, size: 36.0),
                        labelText: 'Phone Number',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock, color: Colors.black, size: 36.0),
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Colors.teal),
                      onPressed: () {
                        _signUp();
                        
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => CustomerSignIn()),
                        // );
                        // Implement your sign-up logic here
                        // String name = _nameController.text;
                        // String Username= _usernameController.text;
                        // String password = _passwordController.text;
                        // print('Name: $name, Username: $_usernameController, Password: $password');
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                  SizedBox(height: 20,),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 60),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("Already have an account? "),
              InkWell(
                onTap: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CustomerSignIn ()
                      ),);},          
                child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold),)
                ),
                // Text("forgot password", style: TextStyle(color: Colors.blue),)
            ],),
          )
                ],
              ),
            ),
          ),
        ]),
      );
  }
}




// class SignUpForm extends StatefulWidget {
//   @override
//   _SignUpFormState createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(height: 20.0),
//           TextField(
//             controller: _nameController,
//             decoration: InputDecoration(
//               labelText: 'Name',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           TextField(
//             controller: _emailController,
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//               labelText: 'Email',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           TextField(
//             controller: _passwordController,
//             obscureText: true,
//             decoration: InputDecoration(
//               labelText: 'Password',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             onPressed: () {
//               // Implement your sign-up logic here
//               String name = _nameController.text;
//               String email = _emailController.text;
//               String password = _passwordController.text;
//               print('Name: $name, Email: $email, Password: $password');
//             },
//             child: Text('Sign Up'),
//           ),
//         ],
//       ),
//     );
//   }
// }