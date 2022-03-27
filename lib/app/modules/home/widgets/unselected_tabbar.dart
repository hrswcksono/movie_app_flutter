import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnselectedTabBar extends StatelessWidget {
  UnselectedTabBar({required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: Get.height * 0.04,
      width: Get.width * 0.44,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title!,
              style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: Get.width * 0.041,
                  // fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(135, 141, 149, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
