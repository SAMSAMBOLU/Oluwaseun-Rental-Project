// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// // import 'package:google_fonts/google_fonts.dart';
// import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
// // import 'home_page.dart';

// class IntroScreen extends StatelessWidget {
//   const IntroScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 60,),
//               Container(
//                 // height: MediaQuery.of(context).size.height*0.3,
//                 child: 
//                 Lottie.asset('assets/animation/animation_llv09iex.json',  // Path to your animation file
//                  width: MediaQuery.sizeOf(context).width*0.7,
//                  height: MediaQuery.sizeOf(context).height*0.2,
              
//                   )
//                 // Image.asset('assets/images/Rentaa.png', width:MediaQuery.of(context).size.height*0.3, )
                
//                 ),
        
//               // we deliver groceries at your doorstep
//               Text(
//                 'We deliver at your service',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 20, fontWeight: FontWeight.bold),
//               ),
        
//               // groceree gives you fresh vegetables and fruits
//               Text(
//                 'Just a click to order',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey[700],
//                 ),
//               ),
        
//               const SizedBox(height: 24),
        
//               const Spacer(),
        
//               // get started button
//               GestureDetector(
//                 onTap: () => Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return CustomerSignIn();
//                     },
//                   ),
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: Colors.teal,
//                   ),
//                   child: const Text(
//                     "Get Started",
//                     style: TextStyle(
//                       color: Colors.white,
//                       // fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
        
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



 // ignore_for_file: unused_field, prefer_const_constructors

 import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';
// import 'package:renta/screens/Sign%20up/customer_signup.dart';
import 'package:renta/screens/Sign%20up/sign_up.dart';

// import 'package:project/screens/signUp/register.dart';




class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set to transparent to remove the color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
   late Timer _timer;
  // late AnimationController _animationController;
  // late Animation<double> _animation;
  int _currentPage = 0;

  final List<OnboardingData> _onboardingData = [
    OnboardingData(
      header: 'Tables and Chairs',
      content: 'Choose from our stylish and \ncomfortable seating options that \ncan accommodate any guest list size',
    ),
    OnboardingData(
    
      header: 'Decor and Lighting',
      content: 'Transform your venue with our exquisite decor\n and lighting solutions. From elegant centerpieces to stunning ambiance lighting,\nwe have it all.',
    ),
    OnboardingData(
      header: 'Tableware and Linens',
      content: ' Impress your guests with our premium tableware and linens.',
    ),
  ];
  // late Timer _timer;
  
  // var _animationController;

  @override
  void initState() {
    super.initState();
    // Automatically switch screens every 3 seconds
    _startAutoPageSwitch();
  }

  // Function to automatically switch screens
   void _startAutoPageSwitch() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 2) {
        _pageController.animateToPage(
          _currentPage + 1,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      } else {
        // If we're on the last screen, loop back to the first screen and start the animation
        // _animationController.reset();
        // _animationController.forward();
        _pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
    // _timer.cancel();
    // _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0,),
              child: Image.asset("assets/images/blacklogo.png", height: 90,width: 90,),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemCount: _onboardingData.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    data: _onboardingData[index],
                  );
                },
              ),
            ),
            _buildSliderBar(),
            SizedBox(height: 80,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:15.0),
                child: Container(
                  height:58,
                  width:321,
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpApp(),)
                    ); },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Circular shape
                        ),
                        ),
                        child: Text('Open an account',
                        style:  TextStyle(
                          fontFamily: 'ubuntu',
                          fontWeight: FontWeight.w500,
                          fontSize: 17),),
                        ),
                ),
              ),
              SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:15.0),
               child: Container(
                height:58,
                width: 321,
                 child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerSignIn(),)
                    ); },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0), // Circular shape
                        ),
                        ),
                        child: Text('Sign In', 
                        style:  TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                           fontFamily: 'Ubuntu'),),
                        ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(28.0),
               child: Column(
                children: [
                  RichText(text: 
                     TextSpan(
                      text: 'By Continuing to use this platform, you agree to the ',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        // fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                        fontSize: 11.5),
                       children: <TextSpan>[
                        TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 11.5, fontWeight: FontWeight.w500,
                        color: Colors.teal, // Link color
                        decoration: TextDecoration.underline,
                        ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add logic to navigate to the Terms & Conditions page
                          print('Navigate to Terms & Conditions',);
                          },
                             ),
                             TextSpan(text: ' and the ', style:  TextStyle(fontSize: 11.5, fontWeight: FontWeight.w500)),
                             TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        fontSize: 11.5,fontWeight: FontWeight.w500,
                        color: Colors.teal, // Link color
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add logic to navigate to the Privacy Policy page
                          print('Navigate to Privacy Policy');
                        },
                             ),
                             TextSpan(text: ' of Renta.',style:  TextStyle(fontSize: 11.5, fontWeight: FontWeight.w500)),
                           ],
                         ),
                              
                     ),
                   ],
                 ),
             ),
              ],
             ),
             
      ),
    );
    
  }

  Widget _buildSliderBar() {
    return Align(alignment: Alignment.center,
        child: Container(
          // color: Colors.black,
          width: 45,
          height: 4.0,
          // width: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _onboardingData.length,
              (index) {
                return RotationTransition(turns: AlwaysStoppedAnimation(_currentPage == _onboardingData.length - 1 ? 0.5 : 0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.only(right: 4),
                    width:  _currentPage == index ? 25:4,
                    height: 4,
                    // margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      // shape: _currentPage == index ? BoxShape.rectangle :BoxShape.circle,
                      // shape: BoxShape.circle,
                      color: _currentPage == index ? Colors.teal : const Color.fromARGB(255, 109, 194, 185),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      
    );
  }
}

class OnboardingData {
  // final String image;
  final String header;
  final String content;

  OnboardingData({
    // required this.image,
     required this.header, 
     required this.content});
}

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            data.header,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),),
          SizedBox(height: 20.0),
          Text(
            data.content,
            style: 
            TextStyle(
              fontFamily:'Ubuntu',
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(0, 0, 0, 0.7),
            ))
        ],
      ),
    );
  }
}
