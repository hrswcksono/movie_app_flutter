import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.width * 0.06),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Text(
            "USER NAME",
            style: TextStyle(
              fontFamily: 'SFPro',
              fontSize: 14,
              color: Color.fromRGBO(135, 141, 149, 1),
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: Get.height * 0.07,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Color.fromRGBO(207, 209, 213, 1), // set border color
                  width: 1.0), // set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0)), // set rounded corner radius
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(Get.height * 0.02),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                  child: Image.asset(
                    'assets/icons/icon_user.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "PASSWORD",
            style: TextStyle(
              fontFamily: 'SFPro',
              fontSize: 14,
              color: Color.fromRGBO(135, 141, 149, 1),
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: Get.height * 0.07,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Color.fromRGBO(207, 209, 213, 1), // set border color
                  width: 1.0), // set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0)), // set rounded corner radius
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(Get.height * 0.02),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                  child: Image.asset(
                    'assets/icons/icon_password.png',
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: 47,
            width: Get.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(229, 25, 55, 1), // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: 18,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Center(
            child: Image.asset(
              "assets/images/sosmed.png",
              height: 50,
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
