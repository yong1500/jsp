import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jspang demos2',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body: Center(
          child: Container(
            height: 200.0,
            child: MyList()
          )
        )

      ),
    );
  }

}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(width: 280, color: Colors.lightBlue),
                Container(width: 280, color: Colors.yellow),
                Container(width: 180, color: Colors.deepOrange),
                Container(width: 180, color: Colors.deepPurple),
              ],
            );
  }
}