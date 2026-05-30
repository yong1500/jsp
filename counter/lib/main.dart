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
  final _myWords = <WordPair>[];
  Icon icon= Icon( Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    _words.addAll(generateWordPairs().take(10));
    return Scaffold(
        appBar: AppBar(
          title: const Text('aixinpeidui23', textAlign: TextAlign.center),
          actions: [
            IconButton(
              onPressed: _goToLove,
              icon: const Icon(Icons.list),
            )
          ],
        ),
        body: _buildList(),
      );
  }

  void _goToLove() {

              // Navigator.push(context, MaterialPageRoute(builder: (context) => LovePage(myWords: _myWords)));
              // print(_myWords.length);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: const Text('我喜欢的单词')),
          body: ListView.builder(
            itemCount: _myWords.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index:- ${_myWords[index].asCamelCase}"),
              );
            },
          ),
        ),
      ),
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

        return _buildRow(index);
      },
    );
  }

  ListTile _buildRow(int index) {
    WordPair word = _words[index];
    return ListTile(
        title: Text( word.asCamelCase ),
        trailing: setIcon(word),
        onTap: () {

            _addToLove(word);
            // print(_myWords);

        },
      );
  }


  void _addToLove(WordPair word) {
    setState(() {
      if (_myWords.contains(word)) {
        _myWords.remove(word);
      } else {
        _myWords.add(word);
      }
    });
  }
  
  Icon setIcon(WordPair word) {
    if (_myWords.contains(word)) {
      return const Icon(Icons.favorite, color: Colors.red);
    } else {
      return const Icon(Icons.favorite_border);
    }
  }
}

