import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio_update/Utils/contact.dart';
import 'package:portfolio_update/screens/about.dart';
import 'package:portfolio_update/screens/education.dart';
import 'package:portfolio_update/screens/main_screen.dart';
import '../Utils/nav_button.dart';
import '../Utils/nav_header.dart';
import '../Utils/projects_info.dart';
import '../responsive_widget.dart';

class Projects extends StatefulWidget {
  static const routeName = '/Projects';
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.13,
                        ),
                        Text(
                          "A list of awesome currently ongoing & completed projects undertaken by me.\nThe projects listed below are for the testing purpose of this webpage, as I am in the process of moving\nall my projects here very soon. Stay Tuned !",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ProjectInfo(),
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
