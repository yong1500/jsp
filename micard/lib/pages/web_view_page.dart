
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
          ),      

        ),
      ),
    );
  }

  void onTapWebView() {
    Navigator.pop(context);
  }
}