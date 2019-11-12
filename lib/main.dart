import 'package:flutter/material.dart';
import 'package:responsive_porfolio/pages/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: <String, WidgetBuilder>{
        '/MainScreen': (BuildContext context) => new MainScreen(),
      },
      home: MainScreen(),
    );
  }
}
