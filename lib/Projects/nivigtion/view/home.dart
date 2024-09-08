import 'package:demo_camp/nivigtion/view/product_detiles_rout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen
({super.key});

  @override
  Widget build(BuildContext context) {
     
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 134, 217, 245),
        title: Text("home"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          trailing: CircleAvatar(),
          title: Text("Product No : $index"),
          // onTap: ()=> Navigator.push(context,MaterialPageRoute (settings: RouteSettings(arguments: index),builder: (context) =>ProductDetilesRout() )),
       onTap: (){
        Navigator.pushNamed(context, "/datails");
       },
        );
      }),
    ));
  }
}