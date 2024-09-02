import 'package:demo_camp/widget/listview_builder.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "image gelary",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: "Billabong",
              fontSize: 30),
        ),
      ),
      body: ListviewBuilder() );
  }
}
