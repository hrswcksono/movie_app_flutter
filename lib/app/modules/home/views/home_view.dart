import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/views/coomingsoon_view.dart';
import 'package:movie_app_flutter/app/modules/home/views/nowplaying_view.dart';
import 'package:movie_app_flutter/app/modules/home/widgets/tab_bar_custom.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: Get.height * 0.03,
            left: Get.width * 0.05,
            right: Get.width * 0.05),
        child: Column(
          children: [
            Container(
                height: Get.height * 0.05,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(205, 207, 211, 1)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: TabBarCustom()),
            Padding(
              padding: EdgeInsets.only(top: Get.width * 0.05),
              child: Obx((() => controller.tabBar.value
                  ? NowplayingView()
                  : CoomingsoonView())),
            ),
          ],
        ),
      ),
    );
  }
}
