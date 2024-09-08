import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});
  @override
  Widget build(BuildContext context) {
    List <Map<String,String>> surahs=[];
    surahs.add({"الاخلاص":"audio/112.wav"});
    surahs.add({"الفلق":"audio/112.wav"});
    surahs.add({"الناس":"audio/112.wav"});
    final player = AudioPlayer();
   return ListView.builder(
      padding: EdgeInsets.only(left: 100),
   itemBuilder: (BuildContext context, int index) { 
    return InkWell(
          child: ListTile(leading:Icon(Icons.menu_book_rounded),
          title: Text('الاخلاص',style: TextStyle(fontSize: 20, ),),  ),
          onTap: ()async{
            await player.pause();
            await player.play(AssetSource(surahs[index][""]));
             
  });
    } );
  }
}