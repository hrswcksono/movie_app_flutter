import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemGridHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            height: 300,
            alignment: Alignment.center, // This is needed
            child: Image.asset(
              "assets/images/john_wick.png",
              fit: BoxFit.contain,
              width: 300,
            ),
          ),
          Text(
            "John Wick",
            style: TextStyle(fontFamily: 'SFPro', fontSize: 20),
          ),
          Text(
            "Crime . 2hr 10m | R",
            style: TextStyle(
                color: Color.fromRGBO(134, 140, 148, 1),
                fontFamily: 'SFPro',
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
