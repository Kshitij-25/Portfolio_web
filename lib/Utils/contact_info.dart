import 'dart:html' as html;
import 'package:flutter_web/material.dart';
import 'package:responsive_porfolio/responsive_widget.dart';

class ContactInfo extends StatefulWidget {
  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  projectCards() => new Container(
        height: ResponsiveWidget.isSmallScreen(context) ? 600 : 600,
        width: ResponsiveWidget.isSmallScreen(context) ? 700 : 700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "CONTACT ME",
              textScaleFactor: 3.0,
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton.icon(
                  icon: SizedBox(
                    width: 50,
                    height: 20,
                    child: Image.asset("images/github.png"),
                  ),
                  label: Text("Github"),
                  onPressed: () {
                    html.window.open("https://github.com/Kshitij-25", "Github");
                  },
                ),
                FlatButton.icon(
                  icon: SizedBox(
                    width: 50,
                    height: 20,
                    child: Image.asset("images/linkedin.png"),
                  ),
                  label: Text("LinkedIn"),
                  onPressed: () {
                    html.window.open(
                        "https://www.linkedin.com/in/kshitij-passi/",
                        "LinkedIn");
                  },
                ),
                FlatButton.icon(
                  icon: SizedBox(
                    width: 50,
                    height: 20,
                    child: Image.asset("images/facebook.png"),
                  ),
                  label: Text("Facebook"),
                  onPressed: () {
                    html.window.open(
                        "https://www.facebook.com/kshitijpassi", "Facebook");
                  },
                ),
                FlatButton.icon(
                  icon: SizedBox(
                    width: 50,
                    height: 20,
                    child: Image.asset("images/twitter.png"),
                  ),
                  label: Text("Twitter"),
                  onPressed: () {
                    html.window
                        .open("https://twitter.com/kshitijpassi", "Twitter");
                  },
                ),
                FlatButton.icon(
                  icon: SizedBox(
                    width: 50,
                    height: 20,
                    child: Image.asset("images/instagram.png"),
                  ),
                  label: Text("Instagram"),
                  onPressed: () {
                    html.window.open("https://www.instagram.com/kshitij.passi/",
                        "Instagram");
                  },
                ),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          projectCards(),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          projectCards(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
