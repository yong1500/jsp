import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: 
        Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I am rich2'),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/tree2.jpg'),
            ),
          ),
        ),
    ),
  );
}
