
import 'package:demo_camp/model/model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

Widget buildListProducts(BuildContext ctx,Product p){

  final double width = MediaQuery.of(ctx).size.width * 0.55;
  final double height = MediaQuery.of(ctx).size.height * 0.2;

  return Row(
    children: [
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(p.imageURL)
          ,fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(15)
          
        ),
      ),Container(
        width: width,
        height: height,
        color: Colors.yellow,
        child: ListView(
       children: [Container(child: ListTile(
         title: Text(
           p.name,
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
         ),
         subtitle: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(p.descrbtion),
             SizedBox(height: 8),
             Row(
               children: [
                 Text(
                   'old price ',
                   style: TextStyle(
                     decoration: TextDecoration.lineThrough,
                     color: Colors.red,
                   ),
                 ),
                 Text(p.price.toString()),
               ],
             ),
             SizedBox(height: 4),
             Row(
               children: [
                 Text(
                   'New price',
                   style: TextStyle(color: Colors.green),
                 ),
                 Text(p.priceDiscount.toString()),
               ],
             ),
           ],
         ),

      )
  )]
  ))]);}
 //  return Padding(
 //    padding: const EdgeInsets.all(3.0),
 //    child:ListView(
 //      children: [Container(child: ListTile(
 //        title: Text(
 //          p.name,
 //          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
 //        ),
 //        subtitle: Column(
 //          crossAxisAlignment: CrossAxisAlignment.start,
 //          children: [
 //            Text(p.descrbtion),
 //            SizedBox(height: 8),
 //            Row(
 //              children: [
 //                Text(
 //                  'old price ',
 //                  style: TextStyle(
 //                    decoration: TextDecoration.lineThrough,
 //                    color: Colors.red,
 //                  ),
 //                ),
 //                Text(p.price.toString()),
 //              ],
 //            ),
 //            SizedBox(height: 4),
 //            Row(
 //              children: [
 //                Text(
 //                  'New price',
 //                  style: TextStyle(color: Colors.green),
 //                ),
 //                Text(p.priceDiscount.toString()),
 //              ],
 //            ),
 //          ],
 //        ),
 //      ),)
 //
 //
 // ] ));


  // return Container(
  //     height: height * 0.3,
  //     width: width* 0.95,
  //  decoration: BoxDecoration(
  //    color: Colors.blueGrey,
  //    shape: BoxShape.rectangle,
  //
  //  ),
  //  child:  ListTile(
  //   leading:SizedBox(
  //     width: 50,
  //       child:FadeInImage.memoryNetwork(
  // placeholder: kTransparentImage,
  // image: 'https://picsum.photos/250?image=9',
  //
  // )),
  //   //  leading:  CircleAvatar(),
  //   title: Text(p.name),
  //   subtitle: Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [Text(p.descrbtion),Row(
  //       children: [Text(p.price.toString(),style: TextStyle(decoration: TextDecoration.lineThrough)),
  //         Text(p.priceDiscount.toString(),style: TextStyle(color: Colors.green))],
  //     )],
  //   ),
  //
  // ));
