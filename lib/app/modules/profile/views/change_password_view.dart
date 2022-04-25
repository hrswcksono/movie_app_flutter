import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_app_bar.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_button.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_field.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_text_view.dart';

class ChangePasswordView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProfileAppBar(
          title: 'ChangePassword',
          center: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ProfileTextView(title: "OLD PASSWORD"),
              SizedBox(
                height: 10,
              ),
              ProfileTextField(image: 'assets/icons/icon_password.png'),
              SizedBox(
                height: 20,
              ),
              ProfileTextView(title: "NEW PASSWORD"),
              SizedBox(
                height: 10,
              ),
              ProfileTextField(image: 'assets/icons/icon_password.png'),
              SizedBox(
                height: 20,
              ),
              ProfileTextView(title: "RE-TYPE PASSWORD"),
              SizedBox(
                height: 10,
              ),
              ProfileTextField(image: 'assets/icons/icon_password.png'),
              Spacer(),
              ProfileButton(title: "Save Change", button: () {})
            ],
          ),
        ));
  }
}
