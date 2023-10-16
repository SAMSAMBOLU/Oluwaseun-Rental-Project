// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:js';
import 'dart:ui';
import 'package:flutter/widgets.dart';


import 'package:flutter/material.dart';

class ProductItemScreen extends StatelessWidget {
  const ProductItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Container(
                  // height: MediaQuery.of(context).size.height*0.5,
                    // width:MediaQuery.of(context).size.width,
                  // width: ,
                  child: Image.asset("assets/images/tent-party-events_48-roung.jpg")),
              ),
              buttomArrow(context),
              scroll(),
            ],
          ),
        ),
      ),
    );
  }
}

scroll() {
  return DraggableScrollableSheet(
    initialChildSize: 0.6,
    maxChildSize: 1.0,
    minChildSize: 0.6,
    builder: (context, scrollController) {
      return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)
          )
        
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10.0, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 35,
                    color: const Color.fromARGB(255, 26, 25, 25),
                  )
                ],
              ),
            ),
            // SizedBox(height:15),
            Text("Foldable Table", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25, color: Colors.white),),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(height:15),
              // Text("Description",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),SizedBox(height: 15,),
              // Text("Length: 72 inches (183 cm)",style: TextStyle(color: Colors.white),),SizedBox(height: 15,),
              // Text("Width: 30 inches (76 cm)",style: TextStyle(color: Colors.white),),SizedBox(height: 15,),
              // Text("Adjustable Height: Usually has multiple height settings, such as 22 inches (56 cm), 29 inches (74 cm), and 36 inches (91 cm).",style: TextStyle(color: Colors.white),),
              // Text("Sits: 6sits",style: TextStyle(color: Colors.white),),SizedBox(height: 15,),
              // Text("Color:white",style: TextStyle(color: Colors.white),),SizedBox(height: 15,),
              // Text("price:#1000",style: TextStyle(color: Colors.white),),
              // Text("Description",style: TextStyle(color: Colors.white),),
              // Text("Description",style: TextStyle(color: Colors.white),)

            ],)
          ],
        ),
        
      );
    },);
}

buttomArrow( BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25)
        ),
        child: BackdropFilter(filter: ImageFilter.blur(
          sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(
              Icons.arrow_back_ios_new, 
              size: 20 ,
              color: Colors.black,),
          ),
        ),),
    ),
  );  
}