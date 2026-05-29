import 'package:flutter/material.dart';

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
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.orange,
            ),
          ],
        ),
      )
    );
  }
}
