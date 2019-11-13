import 'dart:html' as html;
import 'package:flutter_web/material.dart';
import '../Utils/main_info.dart';
import '../Utils/nav_button.dart';
import '../Utils/nav_header.dart';
import '../responsive_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> navbutton() => [
        NavButton(
          text: "About Me",
          onPressed: () {
            Navigator.pushNamed(context, "/About");
          },
        ),
        NavButton(
          text: "Education",
          onPressed: () {
            Navigator.pushNamed(context, "/Education");
          },
        ),
        NavButton(
          text: "Projects",
          onPressed: () {
            Navigator.pushNamed(context, "/Projects");
          },
        ),
        NavButton(
          text: "Resume",
          onPressed: () {
            html.window.open(
                "https://drive.google.com/file/d/1ejqNOTIea8cIGYfJlIUf0Q718ETSB4ve/view",
                "pdf");
          },
        ),
        NavButton(
          text: "Contact Me",
          onPressed: () {
            Navigator.pushNamed(context, "/Contacts");
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: Container(
                  color: Colors.black,
                  child: ListView(
                    padding: const EdgeInsets.all(20.0),
                    children: navbutton(),
                  ),
                ),
              )
            : null,
        body: Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/port.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppBar(
              title: Text("My Portfolio"),
              backgroundColor: Colors.black54,
            ),
            MainInfo(),
            SingleChildScrollView(
              child: ResponsiveWidget(
                largeScreen: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    NavHeader(navButtons: navbutton()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
