import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/views/profile_signed_view.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_button.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_field.dart';

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
          ProfileTextField(image: 'assets/icons/icon_user.png'),
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
          ProfileTextField(image: 'assets/icons/icon_password.png'),
          Spacer(),
          ProfileButton(
            title: 'Login',
            button: () {
              Get.to(ProfileSignedView());
            },
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
