import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class ItemGridHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (() {
        Get.toNamed('detailmovie');
      }),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center, // This is needed
              child: Image.asset(
                "assets/images/john_wick.png",
                fit: BoxFit.contain,
                width: Get.height * 0.5,
              ),
            ),
            GFRating(
              size: Get.width * 0.06,
              value: 3,
              color: Color.fromRGBO(248, 196, 47, 1),
              borderColor: Color.fromRGBO(248, 196, 47, 1),
              onChanged: (value) {
                // setState(() {
                //   _rating = value;
                // });
              },
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
      ),
    );
  }
}
