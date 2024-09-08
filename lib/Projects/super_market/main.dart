import 'package:flutter/material.dart';
import 'package:demo_camp/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(useMaterial3: false),
      home:HomeScreen() ,
    );
  }
}
