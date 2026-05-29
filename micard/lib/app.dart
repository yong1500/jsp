import 'package:flutter/material.dart';
// import 'package:micard/pages/home_page.dart';
import 'package:micard/route/routes.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        ),
        onGenerateRoute: Routes.generateRoute,
        initialRoute: RoutePath.home,
        // home: HomePage(),
      );  
  }
}




