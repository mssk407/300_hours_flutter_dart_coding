import 'package:flutter/material.dart';

class ProductDetilesRout extends StatelessWidget {
    

  // ignore: empty_constructor_bodies
 @override
  Widget build(BuildContext context) {
    int id=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 134, 217, 245),
        title: Text("Detailes  of product: id $id"),
      ),
      
    );
  }
}