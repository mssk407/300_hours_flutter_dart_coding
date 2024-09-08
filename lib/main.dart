import 'package:flutter/material.dart';
import 'package:demo_camp/utils/appRoutes.dart';
import 'package:demo_camp/views/cart_screen.dart';
import 'package:demo_camp/views/details_screen.dart';
import 'package:demo_camp/views/splash%20screen.dart';
import 'views/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(useMaterial3: false)
    ,debugShowCheckedModeBanner: false,
    
      initialRoute:"/home",
      onGenerateRoute:AppRoutes.routeManger ,
      // routes: {
      // "/home":(ctx)=>HomeScreen(),0
      //   "/details":(ctx)=>DetailsScreen(),
      //   "/cart":(ctx)=>CartScreen(),
      //   "/splash":(ctx)=>SplashScreen(),
      // },

    );
  }
}
