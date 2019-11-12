import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_porfolio/responsive_widget.dart';

class ProjectInfo extends StatefulWidget {
  @override
  _ProjectInfoState createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  projectCards(String title, String description, String projecturl,
          String imageurl) =>
      Center(
        child: new Container(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.63
              : MediaQuery.of(context).size.width * 0.63,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.42
              : MediaQuery.of(context).size.width * 0.42,
          // color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 600,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: AssetImage(imageurl),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 00,
                        ),
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            description,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 230),
                          child: FlatButton.icon(
                            icon: new Icon(FontAwesomeIcons.github),
                            label: Text("Project Github link"),
                            onPressed: () {
                              html.window.open(projecturl, "Github");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          projectCards(
              "Tic Tac Toe",
              "Tic-tac-toe (also known as noughts and crosses or Xs and Os) is a game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game.",
              "https://github.com/Kshitij-25/TicTacToe",
              "assets/images/ttt.jpg"),
          projectCards(
              "Stadia Clone",
              "Stadia is a cloud gaming service. The games you play run on Google's cloud servers, but you still see the game on your local screen and play with a gamepad (or keyboard and mouse). It's a lot like a YouTube video, except it's interactive. This means you can play games on a wider range of devices.",
              "https://github.com/Kshitij-25/Stadia-clone",
              "assets/images/stadia.jpg"),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          projectCards(
              "Tic Tac Toe",
              "Tic-tac-toe (also known as noughts and crosses or Xs and Os) is a game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game.",
              "https://github.com/Kshitij-25/TicTacToe",
              "assets/images/ttt.jpg"),
          projectCards(
              "Stadia Clone",
              "Stadia is a cloud gaming service. The games you play run on Google's cloud servers, but you still see the game on your local screen and play with a gamepad (or keyboard and mouse). It's a lot like a YouTube video, except it's interactive. This means you can play games on a wider range of devices.",
              "https://github.com/Kshitij-25/Stadia-clone",
              "assets/images/stadia.jpg"),
        ],
      ),
    );
  }
}