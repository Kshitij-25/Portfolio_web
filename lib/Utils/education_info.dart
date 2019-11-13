import 'package:flutter_web/material.dart';
import '../responsive_widget.dart';

class EducationInfo extends StatelessWidget {
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
              image: AssetImage("images/jss.jpg"),
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
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "B.TECH IN COMPUTER SCIENCE ENGG.",
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "JSS ACADEMY OF\nTECHNICAL EDUCATION",
          textScaleFactor: 4.0,
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "(2019 - 2022)",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
    );
  }
}
