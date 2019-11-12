import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Container(
          width: 310.0,
          child: Row(
            children: <Widget>[
              Text(
                "Contact me :",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                color: Colors.white,
                icon: new Icon(FontAwesomeIcons.github),
                onPressed: () {
                  html.window.open("https://github.com/Kshitij-25", "Github");
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
              ),
              IconButton(
                color: Colors.white,
                icon: new Icon(FontAwesomeIcons.facebook),
                onPressed: () {
                  html.window.open(
                      "https://www.facebook.com/kshitijpassi", "Facebook");
                },
              ),
              IconButton(
                color: Colors.white,
                icon: new Icon(FontAwesomeIcons.twitter),
                onPressed: () {
                  html.window
                      .open("https://twitter.com/kshitijpassi", "Twitter");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
