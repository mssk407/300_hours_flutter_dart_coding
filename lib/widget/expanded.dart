import 'package:flutter/material.dart';

class ExpandedLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Row(
   children: [
     Expanded(child: Container(color: Colors.black,)),
     Expanded(child: Container(color: Colors.white,)),
     Expanded(child: Container(color: Colors.red,)),
     Expanded(child: Container(color: Colors.green,)),
     Expanded( flex:2,child: Column(
       children: [ Expanded(child: Container(color: ,)),
         Expanded(child: Container(color: Colors.red,)),
         Expanded(child: Container(color: Colors.blueGrey,)),
         Expanded(child: Container(color: Colors.green,)),],
     )),

   ],
 );
  }


}