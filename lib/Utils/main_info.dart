import 'package:flutter/material.dart';
import '../responsive_widget.dart';

class MainInfo extends StatelessWidget {
  profileImage(context) => Center(
        child: Container(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/kg.JPG"),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "HELLO, I AM",
        textScaleFactor: 2.0,
        style: TextStyle(color: Colors.blue),
      ),
      Text(
        "KSHITIJ PASSI",
        textScaleFactor: 4.0,
        style: TextStyle(
          color: Colors.black,
          backgroundColor: Colors.white,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "JSSATEN | Mobile + Web Developer |",
        textScaleFactor: 1.3,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          profileImage(context),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: profileData,
          )
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
    );
  }
}
