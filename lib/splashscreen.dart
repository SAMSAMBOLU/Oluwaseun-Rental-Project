// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:renta/screens/IntroPage/intropage.dart';
// // import 'package:renta/screens/Sign%20in/CustomerSignIn.dart';

// // import 'package:renta/screens/Sign%20up/options.dart';
// // import 'package:renta/screens/options.dart';

// // void main() {
// //   runApp(RentingApp());
// // }

// class SplashscreenApp extends StatelessWidget {
//   static String routeName = "/splash";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   static var routeName;

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Simulate a delay to show the splash screen for a few seconds
//     Future.delayed(Duration(seconds: 3), () {
//       // After the delay, navigate to the main screen of the app
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Onboarding()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal, // You can change the background color to your preference
//       body: Center(
//         child: Text(
//           'Renta',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }




// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project/screens/onboard/onboard.dart';
import 'package:renta/screens/IntroPage/intropage.dart';

class SplashscreenApp extends StatelessWidget {
   static String routeName = "/splash";

  const SplashscreenApp({super.key});
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set to transparent to remove the color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  static var routeName;

  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  // Simulate loading progress
  void _startLoading() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _progressValue = 0.2;
      });
    });

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _progressValue = 0.4;
      });
    });

    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _progressValue = 0.6;
      });
    });

    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        _progressValue = 0.8;
      });
    });

    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        _progressValue = 1.0;
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Onboarding(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/whitelogo.png', // Replace with your logo image path
              width: 170.0,
              height: 170.0,
            ),
            // SizedBox(height: 0.0),
            // Text(
            //   'The Platform we build together',
            //   style: GoogleFonts.roboto(
            //     textStyle: TextStyle(
            //     fontWeight: FontWeight.w500,
            //     color: Colors.white,
            //     fontSize: 15.0,
            //   ),
            //   )
            // ),
            const SizedBox(height: 100.0),
            Container(
              width: 200.0,
              height: 16.0,
              decoration: BoxDecoration(
                color: Colors.transparent, // Background color of the progress bar
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.white, // White border color
                  width: 2.0,
                ),
              ),
              child: LinearProgressIndicator(
                value: _progressValue,
                backgroundColor: Colors.transparent,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text('Loading...',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Colors.white,
              ),
              
              
            ),
          ],
        ),
      ),
    );
  }
}

