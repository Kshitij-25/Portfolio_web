import 'dart:html' as html;
import 'package:flutter_web/material.dart';
import '../Utils/nav_button.dart';
import '../Utils/nav_header.dart';
import '../Utils/profile_info.dart';
import '../responsive_widget.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<Widget> navbutton() => [
        NavButton(
          text: "Home",
          onPressed: () {
            Navigator.popAndPushNamed(context, "/MainScreen");
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
            ProfileInfo(),
            SingleChildScrollView(
              child: ResponsiveWidget(
                largeScreen: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        NavHeader(navButtons: navbutton()),
                      ],
                    ),
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
