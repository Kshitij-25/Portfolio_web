import 'package:flutter/material.dart';
import 'package:portfolio_update/Utils/contact.dart';
import 'package:portfolio_update/screens/about.dart';
import 'package:portfolio_update/screens/education.dart';
import 'package:portfolio_update/screens/main_screen.dart';
import 'package:portfolio_update/screens/projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, fontFamily: "Evolve"),
      routes: <String, WidgetBuilder>{
        About.routeName: (ctx) => About(),
        Education.routeName: (ctx) => Education(),
        Projects.routeName: (ctx) => Projects(),
        Contact.routeName: (ctx) => Contact(),
        MainScreen.routeName: (ctx) => MainScreen()
      },
      home: MainScreen(),
    );
  }
}
