import 'package:flutter/material.dart';

class Product {

  late String name,descrbtion,imageURL;
   late double price;
    double discount=0.05;
double get priceDiscount {
 double p= price -(price*discount);
   return p;
}
  Product({required this.name,required this.price,required this.descrbtion,required this.imageURL});


}