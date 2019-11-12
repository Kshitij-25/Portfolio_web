import 'package:flutter/material.dart';
import 'package:responsive_porfolio/responsive_widget.dart';

class EducationInfo extends StatefulWidget {
  @override
  _EducationInfoState createState() => _EducationInfoState();
}

class _EducationInfoState extends State<EducationInfo> {
  educationCard(String text, String url) => Center(
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: new Card(
                child: new Container(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? MediaQuery.of(context).size.height * 0.13
                      : MediaQuery.of(context).size.width * 0.13,
                  width: ResponsiveWidget.isSmallScreen(context)
                      ? MediaQuery.of(context).size.height * 0.40
                      : MediaQuery.of(context).size.width * 0.40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            width: 180.0,
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(url),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Container(
                            child: Text(
                              text,
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          educationCard(
              "JSS Academy of Technical Education\nBachelor of Technology(Computer Science & Engineering)",
              "assets/images/aktu.png"),
          educationCard(
              "PUSA INSTITUTE OF TECHNOLOGY\nDiploma in ELECTRONICS AND COMMUNICATION",
              "assets/images/pusa.jpg"),
          educationCard(
              "ST. THOMAS SCHOOL,INDIRAPURAM", "assets/images/cbse.png")
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 150),
          ),
          SizedBox(
            height: 20,
          ),
          educationCard(
              "JSS Academy of Technical Education\nBachelor of Technology(Computer Science & Engineering)",
              "assets/images/aktu.png"),
          educationCard(
              "PUSA INSTITUTE OF TECHNOLOGY\nDiploma in ELECTRONICS AND COMMUNICATION",
              "assets/images/pusa.jpg"),
          educationCard(
              "ST. THOMAS SCHOOL,INDIRAPURAM", "assets/images/cbse.png")
        ],
      ),
    );
  }
}
