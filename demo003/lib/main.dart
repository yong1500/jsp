import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    var card = Card(child: Column(
      children: <Widget>[
        ListTile(title: Text('jilin'), subtitle: Text("123") ),
        new Divider(),
        ListTile(title: Text('jilinabc'), subtitle: Text("458") ),
        new Divider(),
        ListTile(title: Text('tttjilin'), subtitle: Text("abd123") ),
      ]
    ),
    );

    return MaterialApp(
      title: 'Row Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 60, 16, 136)),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('chuizhi buju')),
        body: 
        Center( child: card  ),
      )
    );
  }
}

