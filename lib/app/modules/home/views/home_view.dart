import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/views/tabbarPage.dart';
import 'package:movie_app_flutter/app/modules/home/widgets/botnavbutton.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Star Movie',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SFPro',
              fontSize: 28,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
              iconSize: 35,
            )
          ],
        ),
        body: TabBarPage(),
        bottomNavigationBar: Container(
          height: Get.height * 0.078,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BotNavBar(
                image: "assets/icons/movie-reel.png",
                stateValue: controller.botNav[0],
              ),
              BotNavBar(
                  image: "assets/icons/event-ticket.png",
                  stateValue: controller.botNav[1]),
              BotNavBar(
                  image: "assets/icons/alarm.png",
                  stateValue: controller.botNav[2]),
              BotNavBar(
                  image: "assets/icons/user.png",
                  stateValue: controller.botNav[3]),
            ],
          ),
        ));
  }
}
