import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio_update/responsive_widget.dart';


class ProjectInfo extends StatefulWidget {
  @override
  _ProjectInfoState createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  projectCards(String title, String description, String projecturl,
          String imageurl) =>
      Center(
        child: new Container(
          height: ResponsiveWidget.isSmallScreen(context) ? 600 : 600,
          width: ResponsiveWidget.isSmallScreen(context) ? 400 : 400,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                image: AssetImage(imageurl), fit: BoxFit.cover),
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
                        FlatButton.icon(
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/github.png"),
                          ),
                          label: Text(
                            "Project Github link",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            html.window.open(projecturl, "Github");
                          },
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          projectCards(
              "Instagram Redesign",
              "Instagram is a free, online photo-sharing application and social network platform. Instagram allows users to edit and upload photos and short videos through a mobile app. Users also have the option of making their profile private so that only their followers can view their posts.",
              "https://github.com/Kshitij-25/Insta-clone-redesign",
              "assets/images/insta.jpg"),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          projectCards(
              "Tic Tac Toe",
              "Tic-tac-toe (also known as noughts and crosses or Xs and Os) is a game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game.",
              "https://github.com/Kshitij-25/TicTacToe",
              "assets/images/ttt.jpg"),
          SizedBox(
            height: 40,
          ),
          projectCards(
              "Stadia Clone",
              "Stadia is a cloud gaming service. The games you play run on Google's cloud servers, but you still see the game on your local screen and play with a gamepad (or keyboard and mouse). It's a lot like a YouTube video, except it's interactive. This means you can play games on a wider range of devices.",
              "https://github.com/Kshitij-25/Stadia-clone",
              "assets/images/stadia.jpg"),
          SizedBox(
            height: 40,
          ),
          projectCards(
              "Instagram Redesign",
              "Instagram is a free, online photo-sharing application and social network platform. Instagram allows users to edit and upload photos and short videos through a mobile app. Users also have the option of making their profile private so that only their followers can view their posts.",
              "https://github.com/Kshitij-25/Insta-clone-redesign",
              "assets/images/insta.jpg"),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
