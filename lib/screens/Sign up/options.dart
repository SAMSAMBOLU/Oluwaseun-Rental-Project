// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_field, must_be_immutable, prefer_const_literals_to_create_immutables, unused_import

// import 'package:flutter/material.dart';
// // import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
// // import 'package:renta/screens/Sign%20in/VendorSignIn.dart';
// import 'package:renta/screens/Sign%20up/customer_signup.dart';
// import 'package:renta/screens/Sign%20up/sign_up.dart';
// import 'package:renta/screens/Sign%20up/vendorsOpt.dart';
// import 'package:renta/screens/Sign%20up/vendorsignup.dart';
// // import 'package:renta/screens/customer_signup.dart';
// // import 'package:renta/screens/customer_signup_Opt.dart';
// // import 'package:renta/screens/vendorsOpt.dart';



// class SignUpAppOpt extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SignUpOptionsPage(),
//     );
//   }
// }

// class SignUpOptionsPage extends StatefulWidget {
//   // bool _isButtonActivated = false;

//   @override
//   State<SignUpOptionsPage> createState() => _SignUpOptionsPageState();
// }

// class _SignUpOptionsPageState extends State<SignUpOptionsPage> {
//   bool _isButtonActivated = false;

//   void _onButtonPressed() {
//     setState(() {
//       _isButtonActivated = !_isButtonActivated;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Sign Up Options',style:TextStyle(fontSize: 24)),
//       ),
//       body: Center(
//         child: ListView(
//           children:[ Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(height: 200,width: 200,
//                 child: Center(child: Image.asset("assets/images/Rentaa.png"))),
//               // Image(image: AssetImage("assets/images/R.png")),
//               // SizedBox(height: 10,),
//               Text("Welcome to Renta",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
//               Text("who are you signing up as?", style:TextStyle(fontSize: 18),),
//               SizedBox(height: 40),
//               ElevatedButton.icon(
                
//                 onPressed: () {
//                   _onButtonPressed();
//                   Navigator.push(
//                     context,
//                     // MaterialPageRoute(builder: (context) => CustomerSignUpPage()),
//                     MaterialPageRoute(builder: (context) => SignUpApp()),
//                   );
//                 },
//                 label: Text('As Customer',style: TextStyle(fontSize: 20),),
//                 style:ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   minimumSize: Size(280, 100),
//                   backgroundColor: _isButtonActivated
//                   ? Colors.white38 // Change to the color you want when activated
//                   : Colors.teal ),
//                   icon: Icon(Icons.account_circle_rounded, size: 70,),
                
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton.icon(
                
//                 onPressed: () {
//                   _onButtonPressed();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => VendorSignUpApp()),
//                   );
//                 },
//                 label: Text('As Vendor',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
//                 style:ElevatedButton.styleFrom(
                  
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   minimumSize: Size(280, 100),
//                   backgroundColor: _isButtonActivated
//                   ? Colors.teal // Change to the color you want when activated
//                   : Colors.white54 ),
//                   icon: Icon(Icons.account_box_outlined, size: 70,color: Colors.black,),
                
//               ),
//               // SizedBox(height: 12,),
//               // InkWell(
//               //   onTap: () {
//               //       Navigator.push(
//               //         context,
//               //         MaterialPageRoute(builder: (context) => CustomerSignIn()),
//               //       );
//               //       // Implement your sign-up logic here
//               //       // String name = _nameController.text;
//               //       // String Username= _usernameController.text;
//               //       // String password = _passwordController.text;
//               //       // print('Name: $name, Username: $_usernameController, Password: $password');
//               //     },
//               //     child:Center(child: Text('Sign in as customer',style: TextStyle(fontSize: 16, color: Colors.teal)))
//               //     //  Text('Sign in as customer',style: TextStyle(fontSize: 16)),
//               // ),
//               // InkWell(
//               //   onTap: () {
//               //       Navigator.push(
//               //         context,
//               //         MaterialPageRoute(builder: (context) => VendorLoginPage()),
//               //       );
//               //       // Implement your sign-up logic here
//               //       // String name = _nameController.text;
//               //       // String Username= _usernameController.text;
//               //       // String password = _passwordController.text;
//               //       // print('Name: $name, Username: $_usernameController, Password: $password');
//               //     },
//               //     child:Row(
//               //       children: [
//               //      Center(child: Text('Sign in as a vendor',style: TextStyle(fontSize: 16, color: Colors.teal))),
//               //       ],
//               //     )
//               //     //  Text('Sign in as customer',style: TextStyle(fontSize: 16)),
//               // )
//             ],
//           ),
//         ]),
//       ),
//     );
//   }
// }



