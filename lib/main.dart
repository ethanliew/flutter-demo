import 'package:flutter/material.dart';
import './RandomWords.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();

//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Center(
//          // child: Text('Hello World'),
//          child: Text(wordPair.asPascalCase),
//        ),
//      ),
//    );

//    return MaterialApp(
//      title: 'Codename Generator',
//      home: RandomWords(),
//    );

    return MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              leading: new Icon(Icons.person),
              title: new Text('Codename Generator'),
            ),
            body: new Center(child: new RandomWords()),

//            persistentFooterButtons: <Widget>[
//          new FlatButton(
//            child: new Icon(Icons.add),
//            onPressed: null,
//          ),
//          new FlatButton(
//            child: new Icon(Icons.edit),
//            onPressed: null,
//          ),
//          new FlatButton(
//            child: new Icon(Icons.delete),
//            onPressed: null,
//          ),
//        ]

        ));
  }
}
