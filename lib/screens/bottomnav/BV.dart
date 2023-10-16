// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:sample/screens/cart/cart.dart';
// import 'package:sample/screens/categories/categories.dart';
// import 'package:sample/screens/home/home.dart';
// import 'package:sample/screens/profile/profile.dart';



// class CustomerScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     HomeScreen(),
//     CategoriesScreen(),
//     CartScreen(),
//     AccountProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       // appBar: AppBar(
//       //   title: Text('My App'),
//       // ),
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.home, size: 30),
//           //   label: 'Home',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.category, size: 30),
//           //   label: 'Categories',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.shopping_cart, size: 30),
//           //   label: 'Cart',
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.account_circle, size: 30),
//           //   label: 'Account',
//           // ),
//         ],
//         selectedItemColor: Colors.teal,
//         unselectedItemColor: Colors.black,
//         // backgroundColor: Colors.white38,
//         type: BottomNavigationBarType.fixed,
//         selectedFontSize: 20,
//         unselectedFontSize:20 ,
//         // borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
//         elevation: 8,
//       ),
//     );
//   }
// }







