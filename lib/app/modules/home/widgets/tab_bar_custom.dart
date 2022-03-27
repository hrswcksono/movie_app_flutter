import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:movie_app_flutter/app/modules/home/widgets/selected_tabbar.dart';
import 'package:movie_app_flutter/app/modules/home/widgets/unselected_tabbar.dart';

class TabBarCustom extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx((() => AnimatedContainer(
        duration: Duration(milliseconds: 2000),
        curve: Curves.bounceInOut,
        child: homeC.tabBar.value
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectedTabBar(
                    title: 'Now Playing',
                  ),
                  InkWell(
                    onTap: () => homeC.tabBar.toggle(),
                    child: UnselectedTabBar(
                      title: 'Coming Soon',
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => homeC.tabBar.toggle(),
                    child: UnselectedTabBar(
                      title: 'Now Playing',
                    ),
                  ),
                  SelectedTabBar(
                    title: 'Coming Soon',
                  )
                ],
              ))));
  }
}
