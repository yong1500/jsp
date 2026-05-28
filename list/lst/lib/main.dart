import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(  ));
}


class MyApp extends StatelessWidget{
  MyApp():super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jspang demos245',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 2.0, crossAxisSpacing: 2.0, childAspectRatio: 0.67
          ),
          children: [
            Image.network('https://picsum.photos/id/230/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/240/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/140/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/152/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/160/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/170/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/180/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/190/200/300', fit: BoxFit.cover,),
            Image.network('https://picsum.photos/id/250/200/300', fit: BoxFit.cover,)
          ],
          )
      ),
    );
  }

}




