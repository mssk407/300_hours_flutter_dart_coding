import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListviewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("first line"), Text("scound line")],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.cyan,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.cyan,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),
                );
              },

            ),

          ],
        ));
  }
}
