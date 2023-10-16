import 'package:flutter/material.dart';
// import 'package:sample/screens/cart/components/body.dart';
import 'package:renta/screens/home/homeBody.dart';
import 'package:renta/size_config.dart';

class HomeScreen extends StatelessWidget {
  static var routeName;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Bodys(),
      ),
    );
  }
}