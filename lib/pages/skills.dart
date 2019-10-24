import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/pages/about.dart';
import 'package:portfolio_web/pages/contact.dart';
import 'package:portfolio_web/pages/education.dart';
import 'package:portfolio_web/pages/projects.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/code.jpg"),
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
                  Navigator.pop(context);
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
                      "https://doc-0o-b8-docs.googleusercontent.com/docs/securesc/fmh1homt03rrntdigts2qiubpe563ek7/64uvjh6etq5at0ga9k2bnt9ih2sk1ahg/1571932800000/16335993444946339484/16335993444946339484/1ejqNOTIea8cIGYfJlIUf0Q718ETSB4ve?e=download",
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
                      text: "Skills",
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250.0, 200.0, 0.0, 0.0),
            child: Container(
              width: 400,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
                elevation: 10,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.code, size: 70),
                        title: Text('JAVA   FLUTTER',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(750.0, 200.0, 0.0, 0.0),
            child: Container(
              width: 400,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
                elevation: 10,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.description, size: 70),
                        title: Text('HTML & CSS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1250.0, 200.0, 250.0, 0.0),
            child: Container(
              width: 400,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
                elevation: 10,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.donut_small, size: 70),
                        title: Text('MYSQL',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250.0, 600.0, 0.0, 0.0),
            child: Container(
              width: 400,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
                elevation: 10,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.developer_mode, size: 70),
                        title: Text('SPRING     HIBERNATE',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(750.0, 600.0, 0.0, 0.0),
            child: Container(
              width: 400,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
                elevation: 10,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.photo_filter, size: 70),
                        title: Text('ADOBE PHOTOSHOP',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1250.0, 600.0, 250.0, 0.0),
            child: Container(
              width: 400,
              height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
                elevation: 10,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.video_call, size: 70),
                        title: Text('SONY VEGAS PRO',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
