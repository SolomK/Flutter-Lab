import 'package:flutter/material.dart';

const owl_photo = 'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class FadeInDemo extends StatefulWidget {
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0.0;
  void display(){
    setState(() {
      opacity = 1.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.asset('images/lake.jpg',
               width: 600,
              height: 240,
              fit: BoxFit.cover,),
             
      TextButton( // this means there is something happen in second time. this allow them to test it 
        child: Text(
          'Show details',
          style: TextStyle(color: Colors.blueAccent),
        ),
        onPressed: () => display(),
      ),  
      //AnimatedOpacity()
      AnimatedOpacity(
        duration: Duration(seconds: 0),
        opacity: opacity,
        child: Column(
          children: <Widget>[
            Text('Type: Owl'),
            Text('Age: 39'),
            Text('Employment: None'),
          ],
        )
      )
    ]);
  }
}
void main(List<String> args) {
  runApp(Animal()); // this 
}
class Animal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: FadeInDemo(), 
        ),
      ),
    );
  }
}