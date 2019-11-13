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
            Text(
              "- Email : kshitijnishu@gmail.com",
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "- Github : @kshitij-25",
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "- LinkedIn : @kshitij-passi",
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "- Facebook : @kshitijpassi",
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "- Twitter : @kshitijpassi",
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "- Instagram : @kshitij.passi",
              textScaleFactor: 2.0,
              style: TextStyle(color: Colors.white),
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
