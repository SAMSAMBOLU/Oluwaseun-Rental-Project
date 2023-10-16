// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:renta/models/productCart.dart';
import 'package:renta/screens/ProductCart/cartPagee.dart';
// import 'package:renta/screens/cart/cart.dart';
// import 'package:renta/screens/cart/components/cart_screen.dart';
import 'package:renta/screens/home/searchField.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
// import 'package:renta/screens/ProductCart/cartPagee.dart';
// import 'search_field.dart';


class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize SizeConfig
    SizeConfig().init(context);

    return Container(
      child:  Home()
          
    );
    
  }
}

class Home extends StatelessWidget {
  
   Home({
    Key? key,
  }) : super(key: key);
   var cartPage = CartModel();
    List listFromCartPage = CartModel().getList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            // numOfitem: CartModel(),
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
            },
            // press: () => Navigator.pop(context, CartPage),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 2,
            press: () {},
          ),
        ],
      ),
    );
  }
}