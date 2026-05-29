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
            Expanded(
               child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return  _listItemView();
                },
              ),
            )
          ],
        ),
      )
    );
  }

  Widget _listItemView() { 
    return Column(
      children: [
        //the first row, avatar, author, date, top4
        Row(children: [

          Image.network('https://plus.unsplash.com/premium_photo-1666672388644-2d99f3feb9f1?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          width: 30,           height: 30,           fit: BoxFit.cover, ),
          Text('Author', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
          Expanded(child: SizedBox()),
          Text('2026-01-01', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          Text('Top4', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
        ],),
        //the second row, title
        Text('3TitleTitleTitleTitleTitleTitleTitleTitleTitle'),
        //the third row, content picture
        Row(
          children: [
            Text('Content'),
            Expanded(child: SizedBox()),
            Image.asset('assets/images/ic_launcher.png', width: 30, height: 30, fit: BoxFit.cover,),
          ],
        
        )
      ]

    );
  }


}
