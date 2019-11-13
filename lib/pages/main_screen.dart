import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:responsive_porfolio/Utils/footer.dart';
import 'package:responsive_porfolio/Utils/main_info.dart';
import 'package:responsive_porfolio/Utils/nav_button.dart';
import 'package:responsive_porfolio/Utils/nav_header.dart';
import 'package:responsive_porfolio/pages/about.dart';
import 'package:responsive_porfolio/pages/education.dart';
import 'package:responsive_porfolio/pages/projects.dart';
import 'package:responsive_porfolio/responsive_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> navbutton() => [
        NavButton(
          text: "About Me",
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return About();
            }));
          },
        ),
        NavButton(
          text: "Education",
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return Education();
            }));
          },
        ),
        NavButton(
          text: "Projects",
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return Projects();
            }));
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
            Footer(),
          ],
        ),
      ),
    );
  }
}
