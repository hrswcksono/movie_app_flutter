import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDate extends StatelessWidget {
  // ItemDate()

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(229, 25, 55, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Today",
              style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: Get.width * 0.05,
              ),
            ),
            Text(
              "Wed",
              style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: Get.width * 0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
