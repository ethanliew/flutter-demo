import 'package:flutter/widgets.dart'; //  building word list widget aka control
import 'package:flutter/material.dart'; //  applying material design
import 'package:english_words/english_words.dart'; // using random english word package

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    //    final wordPair = WordPair.random();
    //    return Text(wordPair.asPascalCase);

    //    return Scaffold(
    //      appBar: AppBar(
    //        title: Text('Codename Generator'),
    //      ),
    //      body: _buildSuggestions(),
    //    );

    return Scaffold(body: _buildSuggestions());
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider(); // insert list item separator
          final index = i ~/ 2; // it returns integer result
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
