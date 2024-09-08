import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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

    Future.delayed(Duration(seconds: 5),(){
Navigator.pushNamedAndRemoveUntil(context, "/home",(route)=>false);
    });
     return Scaffold(
      
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',scale: 0.5,),
            SizedBox(height: 20),
            Text('Welcome to our app'),
            spinkit

          ],
        ),

      
    );
  }
}
