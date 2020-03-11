import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;

  const NavButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: onPressed,
    );
  }
}
