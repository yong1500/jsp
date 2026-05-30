import 'package:flutter/material.dart';
import 'package:micard/pages/home_page.dart';
import 'package:micard/pages/web_view_page.dart';

class Routes{
  //
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.home:
        return pageRoute(HomePage(), settings: settings);
        // default:
      case  RoutePath.webViewPage:
        return pageRoute(WebViewPage(title: "from main", time: 'abc'), settings: settings);
      // default:
      //   return MaterialPageRoute(builder: (_) => HomePage());
    }
    return pageRoute(Scaffold(
      body: Center(
        child: Text("No route defined for ${settings.name}"),
      ),
    ) );
  }

  static MaterialPageRoute pageRoute(
    Widget page, 
    {RouteSettings? settings,
     bool? fullscreenDialog,
     bool? maintainState,
     bool? allowSnapshotting     
     }) {
    return MaterialPageRoute(builder: (context) {
        return page;
      },
      settings: settings,
      fullscreenDialog: fullscreenDialog ?? false,
      maintainState: maintainState ?? true, 
      allowSnapshotting: allowSnapshotting ?? true
      );
  }
}

class RoutePath {
  //
  static const String home = "/";
  static const String webViewPage = "/web_view_page";
}

