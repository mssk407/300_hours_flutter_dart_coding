import 'package:demo_camp/holyQuran_App/widget/chat.dart';
import 'package:demo_camp/holyQuran_App/widget/quran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScrenns extends StatelessWidget {
  const HomeScrenns({super.key});
  @override
  Widget build(BuildContext context) {
 
    final spinkit = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);

 final spinkit2 = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      
      decoration: BoxDecoration(
        color: index.isEven ? Colors.yellow : Colors.green,
      ),
    );
  },
);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HomeScrenns'),
          bottom: TabBar(tabs: [
            Icon(Icons.mail),Icon(Icons.mail),Icon(Icons.mail)
          ]),
        ),
        
        body:  TabBarView(children: [
              Chat(), Column(children: [spinkit,spinkit2],)  , Quran(),
            ]),
            
           
      ),
    );
  }
}