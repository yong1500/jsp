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
              color: Colors.white,
              child: Swiper(
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                pagination: const SwiperPagination(),
                control: const SwiperControl(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.lightBlue,
                    height: 150,
                    margin: EdgeInsets.all(0),

                  );
                },
              ),
            ),
            // Text('Home Page'),
          ],
        ),
      )
    );
  }
}
