// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:renta/screens/complete_profile/complete_profile_screen.dart';
import 'package:renta/screens/profile/Profilepic.dart';

class AccountProfileScreen extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Event App',
      home: AccountPage(),
      routes: {
        '/profile': (context) => ProfilePage(),
        '/address': (context) => AddressPage(),
        '/settings': (context) => SettingsPage(),
        '/myOrders': (context) => MyOrdersPage(),
        '/termsOfService': (context) => TermsOfServicePage(),
        '/privacyPolicy': (context) => PrivacyPolicPage(),
        
      },
    );
  }
}


class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Profile'),
      ),
      body: Center(
        
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Column(
               children: [
                SizedBox(height: 20,),
                ProfilePic(),
               
               ],
             ),
      SizedBox(height: 50,),
      InkWell(
        child: Row(
          
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.person),
            SizedBox(width: 20,),
            // SizedBox(width: 20,),
            Text("My Account", style: TextStyle( color: Colors.black, fontSize: 17),),
            SizedBox(width: 230,),
            // Icon(Icons.arrow_forward_ios)
          ],
        ),
        onTap: () {
                Navigator.pushNamed(context, '/profile');
        },
      ),
      SizedBox(height: 40,),
      InkWell(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.home),
            SizedBox(width: 20,),
            Text("Address",style: TextStyle(color: Colors.black,fontSize: 17),),
            SizedBox(width: 230,),
            // Icon(Icons.arrow_forward_ios)
          ],
        ),
        onTap: () {
                Navigator.pushNamed(context, '/address');
        },
      ),
      SizedBox(height: 50,),
      //for settings 
      InkWell(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.settings),
            SizedBox(width: 20,),
            Text("Settings",style: TextStyle(color: Colors.black,fontSize: 17),),
            SizedBox(width: 230,),
            // Icon(Icons.arrow_forward_ios)
          ],
        ),
        onTap: () {
                Navigator.pushNamed(context, '/settings');
        },
      ),
      SizedBox(height: 50,),
//for Terms of Services 
      InkWell(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.room_service),
            SizedBox(width: 20,),
            Text("Terms of Services", style: TextStyle(color: Colors.black,fontSize: 17)),
            SizedBox(width: 170,),
            // Icon(Icons.arrow_forward_ios)

          ],
        ),
        onTap: () {
                Navigator.pushNamed(context, '/termsOfServices');
        },
      ),
      SizedBox(height: 50,),
      InkWell(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.policy),
            SizedBox(width: 20,),
            Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 17)),
            SizedBox(width: 200,),
            // Icon(Icons.arrow_forward_ios)

          ],
        ),
        onTap: () {
                Navigator.pushNamed(context, '/privacyPolicy');
        },
      ),
      SizedBox(height: 50,),

      InkWell(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15)),
            Icon(Icons.help),
            SizedBox(width: 20,),
            Text("Get help",style: TextStyle(color: Colors.black,fontSize: 17)),
            SizedBox(width: 230),
            // Icon(Icons.arrow_forward_ios)

          ],
        ),
        onTap: () {
                Navigator.pushNamed(context, '/');
        },
      ),


      

            // LinkButton(
            //   text: 'Profile',
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/profile');
            //   },
            // ),
            // LinkButton(
            //   text: 'Address',
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/address');
            //   },
            // ),
            // LinkButton(
            //   text: 'Settings',
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/settings');
            //   },
            // ),
            // LinkButton(
            //   text: 'My Orders',
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/myOrders');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: CompleteProfileScreen(),
      ),
    );
  }
}

class AddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
      ),
      body: Center(
        child: Text('This is the Address page'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('This is the Settings page'),
      ),
    );
  }
}

class MyOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: Center(
        child: Text('This is the My Orders page'),
      ),
    );
  }
}
class TermsOfServicePage extends StatelessWidget {
  const TermsOfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms of services'),
      ),
      body: Center(
        child: Text('Terms and services page'),
      ),
    );
  }
}
class PrivacyPolicPage extends StatelessWidget {
  const PrivacyPolicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Center(
        child: Text('Privacy Policy'),
      ),
    );
  }
}// class LinkButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;

//   LinkButton({required this.text, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onPressed,
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.blue,
//           decoration: TextDecoration.underline,
//         ),
//       ),
//     );
//   }
// }
