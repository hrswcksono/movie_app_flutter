import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  ProfileAppBar({required this.title, required this.center});

  final String title;
  final bool center;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SFPro',
          fontSize: 20,
        ),
      ),
      centerTitle: center,
      // actions: [],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
