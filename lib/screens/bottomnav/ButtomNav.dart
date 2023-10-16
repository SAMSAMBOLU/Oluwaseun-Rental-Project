// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:renta/screens/ProductCart/cartPagee.dart';
// import 'package:sample/screens/cart/cart.dart';
// import 'package:renta/screens/cart/components/cart_screen.dart';
// import 'package:renta/screens/categories/categories.dart';
import 'package:renta/screens/home/home.dart';
import 'package:renta/screens/profile/profile.dart';
import 'package:renta/screens/product display/display.dart';

class CustomerScreeen extends StatefulWidget {
  const CustomerScreeen({super.key});

  @override
  State<CustomerScreeen> createState() => _CustomerScreeenState();
}

class _CustomerScreeenState extends State<CustomerScreeen> {
   int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
   Productdisplay(),
     CartPage(),
    AccountProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        // backgroundColor: Colors.white38,
        body:  _screens[_currentIndex],
        bottomNavigationBar: GNav(
        selectedIndex: _currentIndex,

          onTabChange:(index) {
            setState(() {
            _currentIndex = index;
          });
          },
          padding: EdgeInsets.all(16),
           tabActiveBorder: Border.all(color: Colors.teal, width: 1),
          // backgroundColor: Colors.white38,
          // tabBackgroundColor: Colors.white38,
          gap: 8,
          tabs: [
            GButton(icon: Icons.home,
            text: "Home",
            ),
            GButton(icon: Icons.category,
            text: "Category",
             ),
            GButton(icon: Icons.shopping_cart,
            text: "Cart",
            ),
            GButton(icon: Icons.account_circle,
            text: "Profile",
            )
    
          ],
        )
        
      ),
    );
  }
}