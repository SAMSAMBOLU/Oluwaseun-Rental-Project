// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:renta/screens/constant.dart';

// import 'constants.dart';
import '../../../size_config.dart';

// 



class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize SizeConfig
    SizeConfig().init(context);

    return MaterialApp(
     home: SearchField(),
    );
  }
}





class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6, // Use SizeConfig.screenWidth here
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 224, 210, 210),
        // color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          // fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(9),
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Search product",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
