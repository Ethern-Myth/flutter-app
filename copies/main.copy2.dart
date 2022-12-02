import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green), home: RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final randomWordPairs = <WordPair>[];

  Widget _buildList() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text("Entry A")),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text("Entry B")),
        ),
        Container(
          height: 50,
          color: Colors.amber[400],
          child: const Center(child: Text("Entry C")),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("WordPair Generator")), body: _buildList());
  }
}
