import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: 
        Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I am rich'),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/tree.jpg'),
            ),
          ),
        ),
    ),
  );
}
