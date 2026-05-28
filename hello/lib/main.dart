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
            width: 400,
            height: 300,
            color: Colors.lightBlue ,
            child: Image.network('https://picsum.photos/200', fit: BoxFit.fitHeight)
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