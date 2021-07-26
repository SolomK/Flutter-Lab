import 'package:flutter/material.dart';
import 'package:lab2/colors.dart';
import 'package:lab2/home.dart';
import 'package:lab2/login.dart';
import 'placeholder.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BottomStateFul(),
      
    );
  }
}

class BottomStateFul extends StatefulWidget {
  const BottomStateFul({ Key? key }) : super(key: key);

  @override
  _BottomStateFulState createState() => _BottomStateFulState();
}

class _BottomStateFulState extends State<BottomStateFul> {
  
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.yellow),
    PlaceholderWidget(Colors.red)
    
  ];
  void onTapTapped(int index){
    setState(() {
      _currentIndex = index;
    });
    if (_currentIndex == 0) {
       
      Home();
    } else if (_currentIndex == 1) {
      LogIn();
      
    } else{
      Text("this is profile page");
    }
  }
  Widget tapParser(Widget widget){
    if (_currentIndex == 0) {
      return Home();
      
    } else if (_currentIndex == 1) {
      return LogIn();
      
    }
    return Home();
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: tapParser(widget),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        backgroundColor: ReplyColors.blue900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Messages",
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:  "Profile"

          )
        ],
      ),
      

      
    );
  }
}
