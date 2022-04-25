import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTime extends StatelessWidget {
  ItemTime({
    required this.time,
    required this.distance,
  });

  final String time;
  final double distance;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              time,
              style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(right: distance),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(25, 229, 143, 1),
                ),
                height: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
