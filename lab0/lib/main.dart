import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   void _listOne(){
     AlertDialog(content: Text('this is Solomon'),);
   }
  @override
  Widget build(BuildContext context) {
    //final WordPair =WordPair.random();
   
    return MaterialApp(


      title: "Word List",
      home: Scaffold(
        appBar: AppBar(title: Text('Word List'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _listOne,),
        ]
        ),
        body: Center
        (
          // the main purpose of widget is to provide build method to describe how to build a display itself
          // stateless widget are immutable. this means that there propeties can not be change. 
          child: new RandomWords(),
          
      ),
      ),
      

    );
  }

}

// the following are about statefull widget
class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
 
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
   
  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
     
      itemBuilder: (context, i) {
                 // Add a 1-pixel high divider before each column
        if (i.isOdd) return new Divider();

      final index = i ~/ 2;
                 // if it is the last word pair in the suggested list
        if (index >= _suggestions.length) {
                     // ... then generate 10 more word pairs and add to the suggestion list
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }
  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _saved.remove(pair);
          } else{
            _saved.add(pair);
          }
        });
      },
    );
  }
 void _pushSaved() {
          AlertDialog(content: Text('this is list of favoire Words'),);
}

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: (AppBar(title: Text('List of Words'),
      actions: <Widget>[
        new IconButton(onPressed: _pushSaved, icon: new Icon(Icons.list))

      ],)),
      body: _buildSuggestions(),

    );
  }
}

