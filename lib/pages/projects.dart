import 'package:flutter/material.dart';
import 'package:responsive_porfolio/Utils/footer.dart';
import 'package:responsive_porfolio/Utils/nav_button.dart';
import 'package:responsive_porfolio/Utils/nav_header.dart';
import 'package:responsive_porfolio/Utils/projects_info.dart';
import 'package:responsive_porfolio/pages/about.dart';
import 'package:responsive_porfolio/pages/education.dart';
import 'package:responsive_porfolio/responsive_widget.dart';

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
          onPressed: () {},
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
            Footer(),
          ],
        ),
      ),
    );
  }
}
