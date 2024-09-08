 
import 'package:demo_camp/nivigtion/view/home.dart';
import 'package:demo_camp/nivigtion/view/product_detiles_rout.dart';
import 'package:flutter/material.dart';

import 'view/cart.dart';
 
 

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      // home:HomeScreen()
     initialRoute: "/home",
     routes: {
        "/home":(ctx)=>HomeScreen(),
         "/details":(ctx)=>ProductDetilesRout(),
          "/cart":(ctx)=>Cart(),
            
      }, 
      );
  }

}


