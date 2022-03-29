import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarDetailUnselect extends StatelessWidget {
  TabBarDetailUnselect({required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: Get.height * 0.04,
      width: Get.width * 0.28,
      child: Center(
        child: Text(
          title!,
          style: TextStyle(
              fontFamily: 'SFPro',
              fontSize: Get.width * 0.041,
              color: Color.fromRGBO(135, 141, 149, 1)),
        ),
      ),
    );
  }
}
