import 'package:demo_camp/views/demo_statefull_widget.dart';
import 'package:flutter/material.dart';
import 'package:demo_camp/models/product.dart';
import 'package:demo_camp/views/LoginScreen.dart';
import 'package:demo_camp/views/NotFound.dart';
import 'package:demo_camp/views/cart_screen.dart';
import 'package:demo_camp/views/details_screen.dart';
import 'package:demo_camp/views/home_screen.dart';
import 'package:demo_camp/views/splash%20screen.dart';

class AppRoutes{

  static Route<dynamic>? routeManger(RouteSettings settings){

    switch (settings.name){
      case "/home" :return  MaterialPageRoute(builder: (ctx)=>HomeScreen());
      case "/details": {return MaterialPageRoute(builder: (ctx)=>DetailsScreen(),settings:settings);}
      case "/cart": {
        Map<Product,int> cartItems=settings.arguments as Map<Product,int>;
        return MaterialPageRoute(builder: (ctx)=>CartScreen(cart:cartItems));}
      case "/splash":return MaterialPageRoute(builder: (ctx)=>SplashScreen());
      case "/login":return MaterialPageRoute(builder: (ctx)=>LoginScreen());
     case "/demo":return MaterialPageRoute(builder: (ctx)=>DemoStatefullWidget());
      default : return MaterialPageRoute(builder: (ctx)=>NotFoundScreen());
    }
  }
}