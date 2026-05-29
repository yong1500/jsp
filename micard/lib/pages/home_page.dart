import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Swiper(
              itemCount: 3, 
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  color: Colors.red,

              );
            }),
            // Text('Home Page'),
          ],
        ),
      )
    );
  }
}
