import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSignedButton extends StatelessWidget {
  ProfileSignedButton({required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.065,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Color.fromRGBO(207, 209, 213, 1), // set border color
            width: 1.0), // set border width
        borderRadius:
            BorderRadius.all(Radius.circular(5.0)), // set rounded corner radius
      ),
      child: Padding(
        padding: EdgeInsets.all(13.0),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(
              width: 13,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: 18,
                color: Color.fromRGBO(135, 141, 149, 1),
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
