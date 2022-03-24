import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/utils/splash_screen.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(FutureBuilder(
      future: Future.delayed(
        Duration(seconds: 3),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
        return SplashScreen();
      }));
}
