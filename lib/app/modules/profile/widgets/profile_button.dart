import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileButton extends StatelessWidget {
  ProfileButton({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      width: Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(229, 25, 55, 1), // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'SFPro',
            fontSize: 18,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
