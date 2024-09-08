
import 'package:demo_camp/holyQuran_App/screnns/home_screnns.dart';
import 'package:flutter/material.dart';
 
 

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home:HomeScrenns());
  }

}


