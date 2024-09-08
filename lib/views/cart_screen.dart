import 'package:flutter/material.dart';

import '../models/product.dart';

class CartScreen extends StatelessWidget {
  late Map<Product,int> cart;
   CartScreen({Key? key , required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart screen"),),
    );
  }
}
