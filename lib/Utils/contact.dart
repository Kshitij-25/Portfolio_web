import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio_update/screens/about.dart';
import 'package:portfolio_update/screens/education.dart';
import 'package:portfolio_update/screens/main_screen.dart';
import 'package:portfolio_update/screens/projects.dart';
import '../Utils/contact_info.dart';
import '../Utils/nav_button.dart';
import '../Utils/nav_header.dart';
import '../responsive_widget.dart';

class Contact extends StatefulWidget {
  static const routeName = '/Contacts';
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
          text: "Education",
          onPressed: () {
            Navigator.of(context).pushNamed(Education.routeName);
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
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.13,
                        ),
                        ContactInfo(),
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
