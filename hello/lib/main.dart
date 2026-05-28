import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  String txtbody = 'hel4lo 234  f4 love front and fights 100 courses graduits, yes youare right, we hahha ,dfhg d,gd  need to continues';
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'welcome to flutter',
      home: Scaffold(
        // appBar: AppBar( title: Text('welcome again')),
        body: Center(
          child: Text(
            txtbody + txtbody + txtbody + txtbody,          
            textAlign: TextAlign.end,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,

              )              
          )          
        )
      )
    );
  }
}