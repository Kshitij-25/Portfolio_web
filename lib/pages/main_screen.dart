import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/about.dart';
import 'package:portfolio_web/pages/contact.dart';
import 'package:portfolio_web/pages/education.dart';
import 'package:portfolio_web/pages/projects.dart';
import 'package:portfolio_web/pages/resume.dart';
import 'package:portfolio_web/pages/skills.dart';


class MainScreen extends StatelessWidget {
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
            title: Text("Kshitij",style: TextStyle(fontSize: 45.0,fontFamily: "Billabong")),
            backgroundColor: Colors.black54,
            elevation: 0.0,
            actions: <Widget>[
              FlatButton(
                textColor: Colors.white,
                child: Text("About Me",style: TextStyle(fontSize: 30.0,fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)), 
                onPressed: () {
                  AboutMe();
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Education",style: TextStyle(fontSize: 30.0,fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Education();
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Skills",style: TextStyle(fontSize: 30.0,fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Skills();
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Projects",style: TextStyle(fontSize: 30.0,fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Projects();
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Resume",style: TextStyle(fontSize: 30.0,fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Resume();
                },
              ),
              FlatButton(
                textColor: Colors.white,
                child: Text("Contact",style: TextStyle(fontSize: 30.0,fontFamily: "Billabong")),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)),
                onPressed: () {
                  Contact();
                },
              ),
            ],
          ),
          Center(
            child: RichText(
              text: TextSpan(
                text: "Hi there! My name is\n       Kshitij Passi",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 100.0,
                    fontFamily: "Billabong"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
