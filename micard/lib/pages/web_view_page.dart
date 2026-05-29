
import 'package:flutter/material.dart';


class WebViewPage extends StatefulWidget {
  final String title;
  final String time;
  const WebViewPage({super.key, required this.title, required this.time});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
} 


class _WebViewPageState extends State<WebViewPage> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebViewPage ${widget.title}"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("WebViewPage  ${widget.title} at ${widget.time}" ),
        ),
      ),
    );
  }
}