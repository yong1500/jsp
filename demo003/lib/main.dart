import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('shuiping buju')),
        body: Row(
          children: <Widget>[
            ElevatedButton(onPressed: (){}, child: Text('Red Button') ), 
            ElevatedButton(onPressed: (){}, child: Text('Red     2') ), 
            ElevatedButton(onPressed: (){}, child: Text('Red     3') ), 
            ElevatedButton(onPressed: (){}, child: Text('Red     4') ), 
            ElevatedButton(onPressed: (){}, child: Text('Red     5') ), 
          ],
        ),
      )
    );
  }
}

