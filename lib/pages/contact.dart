import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/pages/about.dart';
import 'package:portfolio_web/pages/education.dart';
import 'package:portfolio_web/pages/projects.dart';
import 'package:portfolio_web/pages/skills.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/contact.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppBar(
            title: Text("Kshitij",
                style: TextStyle(fontSize: 45.0, fontFamily: "Billabong")),
            backgroundColor: Colors.black54,
            elevation: 0.0,
            actions: <Widget>[
              FlatButton(
                textColor: Colors.white,
                child: Text("Home",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.popAndPushNamed(context, "MainScreen()");
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("About Me",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return AboutMe();
                  }));
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Education",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return Education();
                  }));
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Skills",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return Skills();
                  }));
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Projects",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return Projects();
                  }));
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Resume",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  html.window.open(
                      "https://doc-0o-b8-docs.googleusercontent.com/docs/securesc/fmh1homt03rrntdigts2qiubpe563ek7/hqghl6pglr81c82oadq3j4b3et1tnbo9/1573380000000/16335993444946339484/16335993444946339484/1ejqNOTIea8cIGYfJlIUf0Q718ETSB4ve?e=download&authuser=0&nonce=ih652aiua194e&user=16335993444946339484&hash=89snndk4eq878javidaoeb93e6r2k3t7",
                      "GDE");
                },
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                height: 700,
                width: 850,
                margin: const EdgeInsets.only(top: 200, left: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Let's Connect",
                      style: TextStyle(fontSize: 60, fontFamily: "Billabong"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          color: Colors.black,
                          iconSize: 100,
                          icon: new Icon(FontAwesomeIcons.linkedin),
                          onPressed: () {
                            html.window.open(
                                "https://www.linkedin.com/in/kshitij-passi-426b62194/",
                                "LinkedIn");
                          },
                        ),
                        IconButton(
                          color: Colors.black,
                          iconSize: 100,
                          icon: new Icon(FontAwesomeIcons.github),
                          onPressed: () {
                            html.window.open(
                                "https://github.com/Kshitij-25", "Github");
                          },
                        ),
                      ],
                    ),
                    IconButton(
                      color: Colors.black,
                      iconSize: 100,
                      icon: new Icon(FontAwesomeIcons.facebook),
                      onPressed: () {
                        html.window.open(
                            "https://www.facebook.com/kshitijpassi",
                            "Facebook");
                      },
                    ),
                    Text(
                      "[Click over any icon to connect on the respective platform]",
                      style: TextStyle(fontSize: 30, fontFamily: "Billabong"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Contact",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 100.0,
                          fontFamily: "Billabong"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
