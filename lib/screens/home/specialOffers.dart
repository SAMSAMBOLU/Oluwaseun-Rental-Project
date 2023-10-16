// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:renta/screens/constant.dart';
import 'package:renta/screens/product%20display/display.dart';
// import 'package:renta/screens/constant.dart';
// import 'package:renta/screens/home/sectionTitle.dart';

import '../../../size_config.dart';
// import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize SizeConfig
    SizeConfig().init(context);

    return  Container(child: SpecialOff());
  }
}

class SpecialOff extends StatelessWidget {
  const SpecialOff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Column(
          children: [
            Padding(
              padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [(
                     Text("Special for you",style:
                      TextStyle(fontSize: 18, 
                      fontWeight: FontWeight.bold),
                      )
                      ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            //The items under special offers//
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) {return  Productdisplay();},
                            ));
                          },
                          child: SpecialCard(
                            image: "assets/images/82233526_2424869311156964_9065701259871527965_n.jpg",
                            productName: "Kenzo Chairs",
                            productDescription:  "The Kenzo Chair is a symbol of comfort and style.",
                           price:"₦5000" ,
                          ),
                        ),
                        InkWell(onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) {return  Productdisplay();},
                            ));},
                          child: SpecialCard(
                            image: "assets/images/tent-party-events_48-roung.jpg",
                            productName: "Foldable Table",
                            productDescription:  "Effortless Foldable table.",
                           price:"₦20,000 " ,
                          ),
                        ),
                         InkWell(onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) {return  Productdisplay();},
                            ));},
                           child: SpecialCard(
                            image: "assets/images/120025440_1724912587657889_7529323065416749917_n.jpg",
                            productName: "Transparent Chair Set",
                            productDescription:  "Experience the epitome of contemporary sophistication  .",
                           price:"₦23,000 " ,
                                                 ),
                         ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) {return  Productdisplay();},
                            ));},
                          child: SpecialCard(
                            image: "assets/images/120076643_707662153483288_2432539264187247493_n.jpg",
                            productName: "Gold Lucy Chairs",
                            productDescription:  "Step into a realm of luxury.  .",
                           price:"₦23,000 " ,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: getProportionateScreenWidth(20)),
                
              ]
              );
            
          
        
  }
}

class SpecialCard extends StatelessWidget {
   SpecialCard({super.key, 
   required this.image,
   required this.price,
   required this.productName,
   required this.productDescription
   }); 
   String image;
   String price;
   String productName;
   String productDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.5,
          width:MediaQuery.of(context).size.width*0.6,
          // width: 200,
          padding: EdgeInsets.only(left: 15, right:15, top: 10 ),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color:kSecondaryColor.withOpacity(0.1),

            borderRadius: BorderRadius.circular(20),

          ),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFF6625E),
                          borderRadius: BorderRadius.circular(20),
          
                        ),
                        child: Text("-50%",style: TextStyle(
                          fontSize: 14, color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Icon(Icons.favorite, 
                      color: Color(0xFFF6625E),)
                      
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      
                    },
                    child:Container(
                      margin: EdgeInsetsDirectional.all(10),
                      child: Image.asset(image),
                    ) ,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(productName, style: TextStyle(fontSize: 18,
                     color:Colors.black ,fontWeight: FontWeight.bold),),     
                   ),
                   //HEREEEEEEEEEEEEEE//
          
                    Container(
              alignment: Alignment.centerLeft,
              child: Text(
                productDescription,style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                ),),
          
                    ),
                    Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price, style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFFF6625E)
                  ),),
                  // Icon(Icons.shopping_cart_checkout, color: Color(0xFFF6625E),)
                ],
              ),
              )
                ],
              ),
            ],
          ),
        ),
       
        
      ],
      );
  }
}