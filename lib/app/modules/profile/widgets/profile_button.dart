import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/views/profile_signed_view.dart';

class ProfileButton extends StatelessWidget {
  ProfileButton({required this.title, required this.button, Key? key})
      : super(key: key);

  final String title;
  final void Function() button;

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
        onPressed: () {
          Get.to(ProfileSignedView());
        },
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
