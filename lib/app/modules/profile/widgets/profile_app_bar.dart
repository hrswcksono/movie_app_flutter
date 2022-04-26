import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  ProfileAppBar({required this.title, required this.center});

  final String title;
  final bool center;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SFPro',
          fontSize: 20,
        ),
      ),
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/back_black.png',
          height: 20,
        ),
        onPressed: () => Get.back(),
      ),
      centerTitle: center,
      // actions: [],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
