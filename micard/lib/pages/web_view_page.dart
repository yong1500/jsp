
import 'package:flutter/material.dart';


class WebViewPage extends StatefulWidget {
  String? title;
  String? time;
  WebViewPage({super.key, required this.title, required this.time});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
} 


class _WebViewPageState extends State<WebViewPage> {  


  String? name;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var args = ModalRoute.of(context)?.settings.arguments;
      if (args != null) { 
        if(args is Map) {
          name = args['name'];
          setState(() {
          });
        }
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebViewPage ${widget.title} $name"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: () {
              onTapWebView();
            },
            child: Text("return back to main3"),
            // child: Image.network('https://www.wanandroid.com/blogimgs/42da12d8-de56-4439-b40c-eab66c227a4b.png', fit: BoxFit.cover,)
          ),      

        ),
      ),
    );
  }

  void onTapWebView() {
    Navigator.pop(context);
  }
}