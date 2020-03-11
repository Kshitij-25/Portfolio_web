import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio_update/Utils/contact.dart';
import 'package:portfolio_update/screens/about.dart';
import 'package:portfolio_update/screens/main_screen.dart';
import 'package:portfolio_update/screens/projects.dart';
import '../Utils/education_info.dart';
import '../Utils/nav_button.dart';
import '../Utils/nav_header.dart';
import '../responsive_widget.dart';

class Education extends StatefulWidget {
  static const routeName = '/Education';
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  List<Widget> navbutton() => [
        NavButton(
          text: "Home",
          onPressed: () {
            Navigator.of(context).popAndPushNamed(MainScreen.routeName);
          },
        ),
        NavButton(
          text: "About Me",
          onPressed: () {
            Navigator.of(context).pushNamed(About.routeName);
          },
        ),
        NavButton(
          text: "Projects",
          onPressed: () {
            Navigator.of(context).pushNamed(Projects.routeName);
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
            Navigator.of(context).pushNamed(Contact.routeName);
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
                  image: new AssetImage("assets/images/port.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppBar(
              title: Text("My Portfolio"),
              backgroundColor: Colors.black54,
            ),
            EducationInfo(),
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
