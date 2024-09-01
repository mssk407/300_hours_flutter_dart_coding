import 'package:demo_camp/model/model.dart';
import 'package:demo_camp/widget/app_drawer.dart';
import 'package:demo_camp/widget/list_products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  double d = 7;
  List<Product> allProduct = [];
  HomeScreen() {

    allProduct.add(Product(name: "Iphone 13 proMax", price: 2000, descrbtion: "The best phone in the word!", imageURL: 'https://th.bing.com/th/id/R.540af3eace63949647d4202cfb56db5e?rik=ZBAAqkANz0fW9g&pid=ImgRaw&r=0' ,) );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(

          title: const Text("Home Screen 3"),
          backgroundColor: const Color.fromARGB(255, 82, 25, 155),
        ),
        body: Column(
            children:allProduct.map((x)=>buildListProducts(context,x)).toList()
        ),
      ),
    );
  }



}