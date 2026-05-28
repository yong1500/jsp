import 'package:flutter/material.dart';

void main() => runApp(MyApp());


// ignore: must_be_immutable
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String txtbody = '----8hel4lo234lovefrontandfights100coursesgraduitsyesyouarerightwehahhadfhgdgdneedtocontinues';
    Text ctntxt = Text( txtbody + txtbody + txtbody + txtbody, style: TextStyle(fontSize: 40)  );
    BoxDecoration boxDecoration = BoxDecoration(
      gradient: const LinearGradient(
        colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]),
      border: Border.all(width: 5, color: Colors.yellow)  
               );
    Center center = Center(
          child: Container(
            alignment: Alignment.bottomLeft,
            width: 500,
            height: 400,
            // color: Colors.lightBlue,
            decoration: boxDecoration ,
            padding: const EdgeInsets.fromLTRB(55.0, 00, 0, 0),
            margin: const EdgeInsets.all(10),
            child: ctntxt,
          ) 
          
        );
    return MaterialApp( 
      title: 'welcome to flutter',
      home: Scaffold(
        // appBar: AppBar( title: Text('welcome again')),
        body: center
      )
    );
  }
}