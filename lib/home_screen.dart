import 'package:demo_camp/widget/listview_builder.dart';
import 'package:demo_camp/widget/story.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Builder",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: "Billabong",
              fontSize: 30),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(),
              title: Text("Item inedex NO : $index"),
            );
          }),
    );
  }
}
