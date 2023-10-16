// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:renta/screens/home/discountbanner.dart';
import 'package:renta/screens/home/homeheader.dart';
import 'package:renta/screens/home/popularProduct.dart';
import 'package:renta/screens/home/specialOffers.dart';

import '../../../size_config.dart';
import 'categories.dart';


class Bodys extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          // HomeHeader()
          SizedBox(height: getProportionateScreenHeight(50)),
          // HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(5)),
          DiscountBanner(),
          Categories(),
          SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(0)),
          PopularProducts(),
          // SizedBox(height: getProportionateScreenWidth(0)),
        ],
      ),
    );
  }
}


//  WidgetsBinding.instance.addPostFrameCallback((_) {
//     // This code will run after the widget is laid out.
//     // You can perform hit testing or other interactions here.
//   });