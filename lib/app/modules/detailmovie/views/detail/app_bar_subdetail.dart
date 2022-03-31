import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarSubdetail extends StatelessWidget implements PreferredSizeWidget {
  AppBarSubdetail({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style:
              TextStyle(color: Colors.black, fontFamily: 'SFPro', fontSize: 23),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: (() => Get.back()),
          child: Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.black,
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
