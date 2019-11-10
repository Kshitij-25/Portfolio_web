import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/pages/about.dart';
import 'package:portfolio_web/pages/contact.dart';
import 'package:portfolio_web/pages/projects.dart';
import 'package:portfolio_web/pages/skills.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/school.jpg"),
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
          Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Education",
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: Container(
                width: 100.0,
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
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new Stack(
                  children: <Widget>[
                    new Padding(
                      padding:
                          const EdgeInsets.fromLTRB(450.0, 0.0, 450.0, 0.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          width: double.infinity,
                          height: 200.0,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                width: 220.0,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: AssetImage("assets/images/aktu.png"),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Center(
                                  child: Text(
                                "JSS Academy of Technical Education\nBachelor of Technology(Computer Science & Engineering)",
                                style: TextStyle(fontSize: 30.0),
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 0.0,
                      bottom: 0.0,
                      left: 400.0,
                      child: new Container(
                        height: double.infinity,
                        width: 1.0,
                        color: Colors.blue,
                      ),
                    ),
                    new Positioned(
                      top: 100.0,
                      left: 380.0,
                      child: new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: new Container(
                          margin: new EdgeInsets.all(5.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 425.0),
            child: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new Stack(
                  children: <Widget>[
                    new Padding(
                      padding:
                          const EdgeInsets.fromLTRB(450.0, 0.0, 450.0, 0.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          width: double.infinity,
                          height: 200.0,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                width: 220,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: AssetImage("assets/images/pusa.jpg"),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                              Center(
                                  child: Text(
                                "PUSA INSTITUTE OF TECHNOLOGY\nDiploma in ELECTRONICS AND COMMUNICATION",
                                style: TextStyle(fontSize: 30.0),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 0.0,
                      bottom: 0.0,
                      left: 400.0,
                      child: new Container(
                        height: double.infinity,
                        width: 1.0,
                        color: Colors.blue,
                      ),
                    ),
                    new Positioned(
                      top: 100.0,
                      left: 380.0,
                      child: new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: new Container(
                          margin: new EdgeInsets.all(5.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700.0),
            child: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new Stack(
                  children: <Widget>[
                    new Padding(
                      padding:
                          const EdgeInsets.fromLTRB(450.0, 0.0, 450.0, 0.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          width: double.infinity,
                          height: 200.0,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                width: 190.0,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: AssetImage("assets/images/cbse.png"),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Center(
                                  child: Text(
                                "ST. THOMAS SCHOOL,INDIRAPURAM",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 0.0,
                      bottom: 0.0,
                      left: 400.0,
                      child: new Container(
                        height: double.infinity,
                        width: 1.0,
                        color: Colors.blue,
                      ),
                    ),
                    new Positioned(
                      top: 100.0,
                      left: 380.0,
                      child: new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: new Container(
                          margin: new EdgeInsets.all(5.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
