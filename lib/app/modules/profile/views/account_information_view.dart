import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/views/change_password_view.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_button.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_field.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_view.dart';

class AccountInformationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccountInformationView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          children: [
            Spacer(
              flex: 3,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/photo_profile.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Change Photo',
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        color: Color.fromRGBO(71, 207, 255, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Spacer(),
            ProfileTextView(title: 'USER NAME'),
            Spacer(),
            ProfileTextField(image: 'assets/icons/icon_user.png'),
            Spacer(
              flex: 2,
            ),
            ProfileTextView(title: 'EMAIL'),
            Spacer(),
            ProfileTextField(image: 'assets/icons/mail.png'),
            Spacer(
              flex: 2,
            ),
            ProfileTextView(title: 'PHONE'),
            Spacer(),
            ProfileTextField(image: 'assets/icons/mobile-phone.png'),
            Spacer(
              flex: 2,
            ),
            ProfileTextView(title: 'BIRTHDAY'),
            Spacer(),
            ProfileTextField(image: 'assets/icons/calendar-line.png'),
            Spacer(
              flex: 12,
            ),
            Center(
              child: InkWell(
                onTap: (() {
                  Get.to(ChangePasswordView());
                }),
                child: Text(
                  'Change Password',
                  style: TextStyle(
                      fontFamily: 'SFPro',
                      color: Color.fromRGBO(229, 25, 55, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Spacer(),
            ProfileButton(title: 'Save Change', button: () {}),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
