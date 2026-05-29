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
            Container(
              height: 200,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    "https://picsum.photos/250?image=$index",
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 10,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
              ),
            ),
            // Text('Home Page'),
          ],
        ),
      )
    );
  }
}
