
//import 'dart:html';

import 'package:flutter/material.dart';
import 'home.dart';

class LogIn extends StatefulWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}


class _LogInState extends State<LogIn> {
  void home(){
    Home();
  }
 // Home home = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
               
               SizedBox(height: 80.0,),
               Image.asset('images/diamond.jpeg'),
               SizedBox(height: 16.0,),
               Text('Merkato', textAlign: TextAlign.center, style: TextStyle(fontSize: 24),),
               TextField(
                 decoration: InputDecoration(
                   filled: true,
                   labelText: 'Username'
                 ),
                
               ),
               TextField(
                 decoration: InputDecoration(
                   filled: true,
                   labelText: 'Password'
                 ),
                 obscureText: true
               ),
               ButtonBar(
                 children: <Widget>[
                       ElevatedButton(
                         child: Text("Log in"),
                         
                         onPressed: (){
                            Navigator.pop(
                              context, MaterialPageRoute(builder: (context) => Home())
                            );
                         },
                         
                       ),
                       TextButton(
                         child: Text('forget password?'),
                         onPressed: (){},
                       )
                 ],
               )
               

            ],
            
        ),
        
        ),
        
      
      
    );
  }
}