import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/base/widgets/base_app_bar.dart';
import 'package:movie_app_flutter/app/modules/base/widgets/botnavbutton.dart';
import 'package:movie_app_flutter/app/modules/home/views/home_view.dart';
import 'package:movie_app_flutter/app/modules/notification/views/notification_view.dart';
import 'package:movie_app_flutter/app/modules/profile/views/profile_view.dart';
import 'package:movie_app_flutter/app/modules/ticket/views/ticket_view.dart';
import 'package:movie_app_flutter/app/utils/constant.dart';

import '../controllers/base_controller.dart';

class BaseView extends GetView<BaseController> {
  final _pageOptions = [
    HomeView(),
    TicketView(),
    NotificationView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((() => Scaffold(
          appBar: BaseAppBar(
            title: Constant.titleAppBar[controller.basePage.value],
          ),
          body: _pageOptions.elementAt(controller.basePage.value),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Color.fromRGBO(205, 207, 211, 1))),
            ),
            height: Get.height * 0.078,
            child: Row(
              children: [
                BotNavBar(
                  image: "assets/icons/movie-reel.png",
                  stateValue: controller.botNav[0],
                ),
                BotNavBar(
                  image: "assets/icons/event-ticket.png",
                  stateValue: controller.botNav[1],
                ),
                BotNavBar(
                  image: "assets/icons/alarm.png",
                  stateValue: controller.botNav[2],
                ),
                BotNavBar(
                  image: "assets/icons/user.png",
                  stateValue: controller.botNav[3],
                ),
              ],
            ),
          ),
        )));
  }
}
