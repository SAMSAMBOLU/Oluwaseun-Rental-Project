// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:renta/screens/Sign%20up/customer_signup.dart';
import 'package:renta/screens/Sign%20up/sign_up.dart';
// import 'package:renta/screens/Sign%20up/sign_up.dart';
import 'package:renta/screens/bottomnav/ButtomNav.dart';
import 'package:renta/screens/password/forgotpassword.dart';
// import 'package:renta/screens/home/home.dart';
// import 'package:renta/screens/home/homeBody.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerSignIn extends StatelessWidget {
  static var routeName;

  const CustomerSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 10,),
                Icon(Icons.lock, color: Colors.teal,size: 65,),
                SizedBox(height: 10,),
                Text("Welcome to Renta",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text("Enter your details to sign in to Renta",style: TextStyle(fontSize: 14)),
                    
              ],
            ),
                    SizedBox(height: 20.0),
            // Your form fields here
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all(Colors.teal),
              ),
              onPressed: () {
                // Call your authentication function here
                handleLogin(context);
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsetsDirectional.symmetric(horizontal: 40),
              child: Center(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text("Don't have an account? ", style: TextStyle(fontSize: 15),),
                  InkWell(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpApp()
                          ),);
                          //                     MaterialPageRoute(builder: (context) => SignUpApp()),
                          //                   )
                    },
                    child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)),
                    
                ],),
              ),
            ),
            SizedBox(height:20 ,),
            Container(
                    margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPasswordScreen()
                        ),);
                        
                      },
                      child: Text("Forgot Password?", style: TextStyle(color: Colors.teal, fontSize:15 ),)
                      )
                      )
          ],
        ),
      ),
    );
  }

  Future<void> handleLogin(BuildContext context) async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    // Replace this with your actual authentication logic
    try {
      final token = await authenticateUser(username, password);

      // Save the token to local storage
      await saveTokenToLocalStorage(token);

      // Navigate to the home screen or any other desired screen
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CustomerScreeen()),
        );
    } catch (error) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: const Text('Invalid username or password'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<String?> authenticateUser(
      String username, String password) async {
    // Replace this with your actual authentication logic
    final response = await http.post(
      Uri.parse('https://samsam.pythonanywhere.com/login/'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    print('Request Body: ${jsonEncode({
          'username': username,
          'password': password,
        })}');
    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final token = jsonResponse['token'] as String?;
      if (token != null) {
        return token;
      } else {
        throw Exception('Token not found in response');
      }
    } else {
      throw Exception('Failed to authenticate user');
    }
  }

  Future<void> saveTokenToLocalStorage(String? token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('authToken', token ?? '');
  }
}
