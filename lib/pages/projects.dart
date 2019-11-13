import 'dart:html' as html;
import 'package:flutter_web/material.dart';
import '../Utils/contact.dart';
import '../Utils/nav_button.dart';
import '../Utils/nav_header.dart';
import '../Utils/projects_info.dart';
import '../pages/about.dart';
import '../pages/education.dart';
import '../responsive_widget.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<Widget> navbutton() => [
        NavButton(
          text: "Home",
          onPressed: () {
            Navigator.popAndPushNamed(context, "/MainScreen");
          },
        ),
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
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return Contact();
            }));
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
                        Text(
                          "A list of awesome currently ongoing & completed projects undertaken by me.\nThe projects listed below are for the testing purpose of this webpage, as I am in the process of moving\nall my projects here very soon. Stay Tuned !",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),
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
