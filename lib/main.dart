import 'package:flutter_web/material.dart';
import 'package:responsive_porfolio/Utils/contact.dart';
import 'package:responsive_porfolio/pages/about.dart';
import 'package:responsive_porfolio/pages/education.dart';
import 'package:responsive_porfolio/pages/main_screen.dart';
import 'package:responsive_porfolio/pages/projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, fontFamily: "Evolve"),
      routes: <String, WidgetBuilder>{
        '/MainScreen': (BuildContext context) => new MainScreen(),
        '/About': (BuildContext context) => new About(),
        '/Education': (BuildContext context) => new Education(),
        '/Projects': (BuildContext context) => new Projects(),
        '/Contacts': (BuildContext context) => new Contact(),
      },
      home: MainScreen(),
    );
  }
}
