import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:micard/datas/home_banner_data.dart';
import 'package:micard/pages/home/home_vm.dart';
import 'package:micard/route/routes.dart';

import '../../route/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<BannerItemData>? bannerList;
  @override
  initState() {
    super.initState();
    HomeViewModel.getBanner();
    print('HomePage initState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: banerList(),
      )
    );
  }

  Column banerList() {
    return Column(
        children: [
          Container(
            height: 200,
            color: Colors.white,
            child: Swiper(
              indicatorLayout: PageIndicatorLayout.COLOR,
              autoplay: true,
              pagination: const SwiperPagination(),
              control: const SwiperControl(),
              itemCount: bannerList?.length ?? 0,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.lightBlue,
                  height: 150,
                  margin: EdgeInsets.all(0),
                  child: Image.network(bannerList?[index].imagePath ?? '', fit: BoxFit.cover,),
                );
              },
            ),
          ),
          Expanded(
             child: ListView.builder(
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (context, index) {
                return  _listItemView();
              },
            ),
          )
        ],
      );
  }

  Widget _listItemView() { 
    return GestureDetector(
      onTap: () {
        onTapMain();
      },
      child: Container(
        margin: EdgeInsets.all( 5),
        padding: EdgeInsets.all( 10),
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))
          border: Border.all(color: Colors.black12, width: 0.5),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            //the first row, avatar, author, date, top4
            Row(children: [
        
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: 
                Image.network('https://plus.unsplash.com/premium_photo-1666672388644-2d99f3feb9f1?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  width: 50,           height: 50,           fit: BoxFit.cover, ),
              ),
              Text('Au4', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue),),
              Expanded(child: SizedBox()),
              Text('2026-01-02', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
              Text('Top5', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.green),)
            ],),
            //the second row, title
            Text(
              '3TitleTitleTitleTitleTitleTitleTitleTitleTitle', 
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            //the third row, content picture
            Row(
              children: [
                Text('Content'),
                Expanded(child: SizedBox()),
                Image.asset('assets/images/ic_launcher.png', width: 30, height: 30, fit: BoxFit.cover,),
              ],
            
            )
          ]
        
        ),
      ),
    );
  }

  void onTapMain() {
    initBannerData();
    print('onTapMains');
    RouteUtils.pushForNamed(context, RoutePath.webViewPage, arguments: { 'name': 'dark6'});
  }

  void initBannerData() async {
         bannerList = await HomeViewModel.getBanner();
         setState(() {
           
         });
         print('bannerList3s: ${bannerList?.length }');
  }


}
