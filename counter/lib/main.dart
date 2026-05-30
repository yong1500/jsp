import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class  _HomePageState extends State<HomePage> {

  final _words = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    _words.addAll(generateWordPairs().take(10));
    return Scaffold(
        appBar: AppBar(
          title: const Text('aixinpeidui8', textAlign: TextAlign.center),
        ),
        body: _buildList(),
      );
  }

  Widget _buildList() {
    return ListView.builder(
      itemBuilder: (context, item) {

        if (item.isOdd) return const Divider();
        final index = item ~/ 2;
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }

        return ListTile(
          title: Text( _words[index].asCamelCase ),
        );
      },
    )
    
    
    ;
  }
}

