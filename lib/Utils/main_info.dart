import 'package:flutter_web/material.dart';
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
              image: AssetImage("images/kg.JPG"),
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
          "HELLO, I AM",
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.blue),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "KSHITIJ PASSI",
          textScaleFactor: 5.0,
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      SizedBox(
        height: 10,
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
