import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTextField extends StatelessWidget {
  ProfileTextField({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.065,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Color.fromRGBO(207, 209, 213, 1), // set border color
            width: 1.0), // set border width
        borderRadius:
            BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(Get.height * 0.02),
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 13.0, bottom: 13.0),
            child: Image.asset(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
