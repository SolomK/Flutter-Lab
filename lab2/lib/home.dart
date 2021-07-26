import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);


  List<Card> _buildGridCards(int count){
    List<Card> card = List.generate(
      count, (index) => Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0, 
              child: Image.asset('images/diamond.jpeg')
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Title'),
                    SizedBox(height: 8.0,),
                    Text("Secondary Text")

                  ],
                ),
                )

          ],
        ),
      )
      );
      return card;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed:(){AlertDialog();},
        ),
        title: Text('Home page'),
        
        actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                semanticLabel: 'search',
              ),
              onPressed: (){},
              
            ),
            IconButton(
              onPressed: (){},
               icon: Icon(Icons.tune, semanticLabel: 'filtert',),
               
               )
        ],
         
        ),
        body: GridView.count(
           crossAxisCount: 2,
           padding: EdgeInsets.all(16),
           childAspectRatio: 8.0 / 9.0,
           children: _buildGridCards(10),

        ),
      
    );
  }
}
// the material is something lie 