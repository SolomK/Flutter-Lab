import 'package:flutter/material.dart';
import 'package:lab2/bottom_navigation.dart';

//import 'login.dart';
//import 'home.dart';
//import 'test.dart';
//import 'colors.dart';
//import 'bottom_navigation.dart';
//import 'google_map.dart';
 void main(List<String> args) {
   runApp(ShopApp());
 }
class ShopApp extends StatelessWidget {
  const ShopApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: BottomNavigation(),
        ),
      
    );
  }
}
