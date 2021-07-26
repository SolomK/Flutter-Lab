
import 'package:flutter/material.dart';

class CardExcercise extends StatelessWidget {
  const CardExcercise({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(title: Text("Merikato Market"),),
         body: GridView.count(
           crossAxisCount: 2,
           padding: EdgeInsets.all(16.0),
           childAspectRatio: 8.0 / 9.0,
           children: <Widget>[
                   GestureDetector(
                     onTap: (){ 
                       AlertDialog(
                         title: Text('this is first card'),
                         content: Text("Hello, This is diamond one!! you can get in short time"),
                         );},
                     child: Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
                   ),
                   Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,

                   ),
                    Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
                    Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
                    Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
                    Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
                    Card(
                     clipBehavior: Clip.antiAlias,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
                    Card(
                     clipBehavior: Clip.antiAlias,
                     
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         AspectRatio(aspectRatio: 18.0 / 11.0, child: Image.asset('images/diamond.jpeg'),),
                         Padding(
                           padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8),
                           child: Column(
                             children: [
                                    Text("Title"),
                                    SizedBox(height: 8.0,),
                                    Text("Secondary Text")
                             ],
                           ),
                           )
                       ],
                       
                     ) ,
                     
                     
                   ),
           ],

         ),
       ),
    );
  }
}