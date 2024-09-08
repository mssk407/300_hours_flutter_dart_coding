 
import 'package:demo_camp/instagram/home_screen.dart';
import 'package:demo_camp/nivigtion/view/cart.dart';
import 'package:demo_camp/nivigtion/view/product_detiles_rout.dart';
import 'package:flutter/material.dart';
 
 

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: "/home",
      // home:HomeScreen()
      
      );
  }

}


