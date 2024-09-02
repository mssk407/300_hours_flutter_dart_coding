import 'package:demo_camp/widget/bottom_bar_widget.dart';
import 'package:demo_camp/widget/story.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 40,
          color: Colors.grey[600],
        ),
        titleSpacing: 3,
        title: Text(
          "Instagram",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: "Billabong",
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon:Image.asset("assets/images/masenger.png",width: 60,)),
        ],

      ),
      bottomNavigationBar: BottomBarWidget(),
body: Column(
  children: [
    Container(width: width,)
  ],
)
    );
  }
}
