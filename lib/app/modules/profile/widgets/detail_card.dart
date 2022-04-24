import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  DetailCard({required this.textOne, required this.textTwo});

  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(
          textOne,
          style: TextStyle(
              color: Color.fromRGBO(102, 142, 186, 1),
              fontFamily: 'SFPro',
              fontSize: 15,
              letterSpacing: 2.0),
        ),
        Text(
          textTwo,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'SFPro',
              fontSize: 20,
              letterSpacing: 3.0),
        ),
      ],
    );
  }
}
