// // ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:renta/models/Cart.dart';
// import 'package:renta/screens/cart/components/body.dart';
// import 'package:renta/screens/cart/components/checkout.dart';
// // import 'package:shop_app/models/Cart.dart';


// class Cart_screen extends StatelessWidget {
//   static String routeName = "/cart";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context),
//       body: Body(),
//       bottomNavigationBar: CheckoutCard(),
//     );
//   }

//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.teal,
//       title: Column(
//         children: [
//           Text(
//             "Your Cart",
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//             "${demoCarts.length} items",
//             style: TextStyle(color: Colors.white)
//             // Theme.of(context).textTheme.caption,
//           ),
//         ],
//       ),
//     );
//   }
// }