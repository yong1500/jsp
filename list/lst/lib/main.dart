import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(  ));
}


class MyApp extends StatelessWidget{
  MyApp():super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jspang demos24',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0, 
          crossAxisCount: 3,
          children: [
            const Text('data 1'), 
            const Text('data 2' ), 
            const Text('data 3'), 
            const Text('data 4'), 
            const Text('data 5'), 
            const Text('data 6'), 
            const Text('data 7'),
            const Text('data a') 
            ],
        )
      ),
    );
  }

}




