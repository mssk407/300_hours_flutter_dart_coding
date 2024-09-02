import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';

class PostWidget extends StatelessWidget{
  late User user;
  PostWidget({required this.user });
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;

     return ListView.builder(itemCount: user.posts.length,
       itemBuilder: (context,index) {
         return Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween
           ,
           children: [
             ListTile(
               leading: Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(),
                   image: DecorationImage(image: AssetImage(user.imageUrl))
                 ),
               ),
               title: Text(user.name),
               subtitle:Text(user.username),
               trailing: Icon(Icons.more_vert_sharp),

             ),
             Container(

               width:width-10 ,
               height: height*0.45,
                decoration: BoxDecoration(
                   // shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image:DecorationImage(image: AssetImage(user.posts[index],),fit: BoxFit.fill)
                ),
             )
             ,
             ListTile(
               leading: Wrap(
                 children: [
                   Icon(Icons.favorite,color: Colors.red,),
                   Icon(Icons.email_outlined,color: Colors.grey,),
                   Icon(Icons.mark_as_unread_sharp,color: Colors.grey,),
                   SizedBox(width: width*0.5 ,),
                   Icon(Icons.bookmark_border_outlined,color: Colors.grey,)
                 ],
               ),

             )
           ],
         );
       }
     );
   
  }

}