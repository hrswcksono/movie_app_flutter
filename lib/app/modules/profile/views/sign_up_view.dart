import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_app_bar.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_button.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_field.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_view.dart';

class SignUpView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ProfileAppBar(
        center: true,
        title: 'Sign Up',
      ),
      body: Padding(
        padding: EdgeInsets.all(Get.width * 0.06),
        child: Column(
          children: [
            Spacer(),
            ProfileTextView(title: 'USERNAME'),
            SizedBox(
              height: 6,
            ),
            ProfileTextField(image: 'assets/icons/icon_user.png'),
            Spacer(),
            ProfileTextView(title: 'EMAIL'),
            SizedBox(
              height: 6,
            ),
            ProfileTextField(image: 'assets/icons/mail.png'),
            Spacer(),
            ProfileTextView(title: 'PHONE'),
            SizedBox(
              height: 6,
            ),
            ProfileTextField(image: 'assets/icons/mobile-phone.png'),
            Spacer(),
            ProfileTextView(title: 'BIRTHDAY'),
            SizedBox(
              height: 6,
            ),
            ProfileTextField(image: 'assets/icons/calendar-line.png'),
            Spacer(),
            ProfileTextView(title: 'PASSWORD'),
            SizedBox(
              height: 6,
            ),
            ProfileTextField(image: 'assets/icons/icon_password.png'),
            Spacer(),
            ProfileTextView(title: 'RE-TYPE PASSWORD'),
            SizedBox(
              height: 6,
            ),
            ProfileTextField(image: 'assets/icons/icon_password.png'),
            Spacer(
              flex: 2,
            ),
            ProfileButton(title: 'Create Account')
          ],
        ),
      ),
    );
  }
}
