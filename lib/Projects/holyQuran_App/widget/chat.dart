import 'package:flutter/material.dart';import 'package:carousel_slider/carousel_slider.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});
  @override
  Widget build(BuildContext context) {
     double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
   
  return  Column(
    children: [
      CarouselSlider.builder(
          options:   CarouselOptions(
           height: height*0.15,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeInCirc,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.vertical,
       ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
      Column(
        children: [
          ListTile(
          leading: CircleAvatar(),
          title: Text("name"),
          subtitle: Text("hello how are you...."),
          trailing: Container(
            
            width: width*0.05,
            decoration: BoxDecoration(
              color: Colors.green,shape: BoxShape.circle
            ),
            child: Center(
              child: Text(
                "7",
                
              ),
            ),
          ),),
        ],
      )
            
        ),
     CarouselSlider.builder(
          options:   CarouselOptions(
          height: height*0.35,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
       ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
      ListTile(
      leading: CircleAvatar(),
      title: Text("name"),
      subtitle: Text("hello how are you...."),
      trailing: Container(
        
        width: width*0.05,
        decoration: BoxDecoration(
          color: Colors.green,shape: BoxShape.circle
        ),
        child: Center(
          child: Text(
            "7",
            
          ),
        ),
      ),)
            
        ),
    ],
  ); 
     
  }
}