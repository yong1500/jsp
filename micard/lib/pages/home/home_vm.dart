import 'package:dio/dio.dart';
import 'package:micard/datas/home_banner_data.dart';

class HomeViewModel {

  static  Future<List<BannerItemData>> getBanner() async {
    Dio dio = Dio();
    dio.options = BaseOptions(
      method: 'GET',
      baseUrl: 'https://www.wanandroid.com/',
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
      // sendTimeout: Duration(seconds:30),
    );


    final Map<String, dynamic> jsonDummy =     {
      "data": [
        {
          "desc": "一起来做个App吧",
          "id": 10,
          "imagePath": "https://www.wanandroid.com/blogimgs/62c1bd68-b5f3-4a3c-a649-7ca8c7dfabe6.png",
          "isVisible": 1,
          "order": 0,
          "title": "一起来做个App吧",
          "type": 0,
          "url": "https://www.wanandroid.com/blog/show/2"
        },
        {
          "desc": "flutter 3.0.5 发布了，赶紧来看看吧",
          "id": 20,
          "imagePath": "https://www.wanandroid.com/blogimgs/90bdeee9-1e9d-4a8e-9bba-6d310e8cba1c.png",
          "isVisible": 1,
          "order": 0,
          "title": "flutter 3.0.5 发布了，赶紧来看看吧",
          "type": 0,
          "url": "https://www.wanandroid.com/blog/show/2493"
        },
        {
          "desc": "",
          "id": 30,
          "imagePath": "https://www.wanandroid.com/blogimgs/90bdeee9-1e9d-4a8e-9bba-6d310e8cba1c.png",
          "isVisible": 1,
          "order": 0,
          "title": "",
          "type": 0,
          "url": ""
        }
      ],
      "errorCode": 0,
      "errorMsg": ""
    }    ;
    HomeBannerData homeBannerData = HomeBannerData.fromJson(jsonDummy);
    if (homeBannerData.dataList != null) {
      return homeBannerData.dataList!;
    } else {
      return [];
    }
    
    // print(  jsonDummy['data'][0]['title']);
    // Response response = null as Response;
    // Response response = await dio.get('banner/json');
    // print('response: ${response.data}'); 
  }

}