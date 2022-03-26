import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(227, 36, 60, 1),
        body: Center(
          child: Image.asset(
            "assets/images/Logo.png",
            width: Get.width * 0.4,
          ),
        ),
      ),
    );
  }
}
