import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/pages/about.dart';
import 'package:portfolio_web/pages/contact.dart';
import 'package:portfolio_web/pages/education.dart';
import 'package:portfolio_web/pages/skills.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/hi.jpg"),
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
              FlatButton(
                textColor: Colors.white,
                child: Text("Contact",
                    style: TextStyle(fontSize: 30.0, fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return Contact();
                  }));
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(bottom: 50, left: 300, right: 300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: RichText(
                              text: TextSpan(
                                text: "Projects",
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
                    Text(
                      "A list of awesome currently ongoing & completed projects undertaken by me.",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    Text(
                      "The projects listed below are for the testing purpose of this webpage, as I am in the process of moving",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    Text(
                      "all my projects here very soon. Stay Tuned !",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          width: 400,
                          height: 600,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Title",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Description",
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  " Project links",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: 400,
                          height: 600,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Title",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Description",
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  " Project links",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          width: 400,
                          height: 600,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Title",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Description",
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  " Project links",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: 400,
                          height: 600,
                          child: Column(
                            children: <Widget>[
                              Container(
                                color: Colors.red,
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Title",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Project Description",
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  " Project links",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
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
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: Container(
                  width: 150.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        color: Colors.white,
                        icon: new Icon(FontAwesomeIcons.github),
                        onPressed: () {
                          html.window
                              .open("https://github.com/Kshitij-25", "Github");
                        },
                      ),
                      IconButton(
                        color: Colors.white,
                        icon: new Icon(FontAwesomeIcons.linkedin),
                        onPressed: () {
                          html.window.open(
                              "https://www.linkedin.com/in/kshitij-passi-426b62194/",
                              "LinkedIn");
                        },
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
