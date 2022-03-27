import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectedTabBar extends StatelessWidget {
  SelectedTabBar({
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: Get.height * 0.04,
      width: Get.width * 0.44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(229, 25, 55, 1)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/tab_bar.png',
              width: Get.width * 0.055,
            ),
            SizedBox(
              width: Get.width * 0.015,
            ),
            Text(
              title!,
              style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: Get.width * 0.041,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
