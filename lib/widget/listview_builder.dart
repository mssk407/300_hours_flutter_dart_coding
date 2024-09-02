import 'package:flutter/material.dart';

class ListviewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 60,
      color: Colors.blueGrey,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: ( context, index) {
            return Container(
              width: width,
              child: ListTile(
                leading: CircleAvatar(),
                title: Text("Item inedex NO : $index"),
              ),
            );
          }),
    );

  }
}
