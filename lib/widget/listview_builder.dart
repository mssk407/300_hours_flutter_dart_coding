import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    double height = MediaQuery.of(ctx).size.height;
    double width = MediaQuery.of(ctx).size.width;
    return BottomAppBar(
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey[600],), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "favorite "),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: " add"),
          BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/images/reels.png"),width: 25,),
              label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: " "),
        ],
      ),
    );
  }
}
