import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTextView extends StatelessWidget {
  CardTextView({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      title,
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'SFPro',
          fontSize: 20,
          letterSpacing: 3.0),
    );
  }
}
